using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Cineteatro2
{
    public partial class Venda : Form
    {
        private long idBar;

        public Venda(long idBarSelecionado)
        {
            InitializeComponent();
            this.idBar = idBarSelecionado;
        }

        private void Venda_Load(object sender, EventArgs e)
        {
            id_label.Text = idBar.ToString();

            CarregarProdutos();
            ConfigurarMetodosPagamento();
            CarregarHistoricoVendas();
        }

        private void CarregarProdutos()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = "SELECT Codigo, Nome FROM dbo.vw_Produtos";
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        producto_select.DataSource = dt;
                        producto_select.DisplayMember = "Nome";
                        producto_select.ValueMember = "Codigo";
                        producto_select.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex) { 
                MessageBox.Show("Erro ao carregar produtos: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ConfigurarMetodosPagamento()
        {
            metodo_pagamento.Items.Clear();
            metodo_pagamento.Items.Add("MBWay");
            metodo_pagamento.Items.Add("Multibanco");
            metodo_pagamento.Items.Add("Numerário");
            metodo_pagamento.SelectedIndex = 0;
        }

        private void CarregarHistoricoVendas()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = @"
                        SELECT 
                            Recibo,
                            Produto,
                            Qtd,
                            [Total (€)],
                            Pagamento,
                            NIF
                        FROM dbo.vw_HistoricoVendasBar
                        WHERE ID_Bar = @ID_Bar
                        ORDER BY Recibo DESC";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID_Bar", idBar);
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            adapter.Fill(dt);
                            dataGridView1.DataSource = dt;

                            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                            dataGridView1.ReadOnly = true;
                            dataGridView1.AllowUserToAddRows = false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao atualizar histórico: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnVender_Click(object sender, EventArgs e)
        {
            if (producto_select.SelectedValue == null)
            {
                MessageBox.Show("Por favor, selecione um produto.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (numericUpDown1.Value <= 0)
            {
                MessageBox.Show("A quantidade deve ser maior do que zero.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            long? nifCliente = null;
            if (!string.IsNullOrWhiteSpace(nif_box.Text))
            {
                if (long.TryParse(nif_box.Text, out long nifConvertido))
                {
                    nifCliente = nifConvertido;
                }
                else
                {
                    MessageBox.Show("Por favor, insira um NIF válido (apenas números).", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }

            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("dbo.sp_RegistarCompraBar", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@ID_Bar", idBar);
                        cmd.Parameters.AddWithValue("@CodigoProduto", producto_select.SelectedValue);
                        cmd.Parameters.AddWithValue("@Quantidade", (int)numericUpDown1.Value);
                        cmd.Parameters.AddWithValue("@MetodoPagamento", metodo_pagamento.SelectedItem.ToString());

                        cmd.Parameters.AddWithValue("@NIF_Cliente", (object)nifCliente ?? DBNull.Value);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Venda efetuada com sucesso!", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);

                numericUpDown1.Value = 0;
                nif_box.Clear();
                CarregarHistoricoVendas();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message, "Erro na Operação", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro inesperado: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}