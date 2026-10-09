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

namespace Cineteatro2
{

    public partial class Bar : Form
    {
        public Bar()
        {
            InitializeComponent();
        }

        private void Bar_Load(object sender, EventArgs e)
        {
            CarregarBares();
        }

        private void CarregarBares()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = @"
                        SELECT 
                            [ID do Bar],
                            [Edifício],
                            [Estado],
                            [Funcionário Ativo]
                        FROM dbo.vw_BaresDetalhados";

                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
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
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar a lista de bares: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


        }
        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                long idSelecionado = Convert.ToInt64(dataGridView1.SelectedRows[0].Cells["ID do Bar"].Value);

                EditarBar formEditar = new EditarBar(idSelecionado);

                if (formEditar.ShowDialog() == DialogResult.OK)
                {
                    CarregarBares();
                }
            }
            else
            {
                MessageBox.Show("Por favor, selecione um bar na tabela para editar.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        private void btnCompras_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                long idSelecionado = Convert.ToInt64(dataGridView1.SelectedRows[0].Cells["ID do Bar"].Value);

                Venda formVenda = new Venda(idSelecionado);
                formVenda.ShowDialog();

                CarregarBares();
            }
            else
            {
                MessageBox.Show("Por favor, selecione um bar na tabela para aceder às compras.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

    }
}