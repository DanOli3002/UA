using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Cineteatro2
{
    public partial class EditarBar : Form
    {
        private long idBar; 

        public EditarBar(long idBarParaEditar)
        {
            InitializeComponent();
            this.idBar = idBarParaEditar;
        }

        private void EditarBar_Load(object sender, EventArgs e)
        {
            id.Text = idBar.ToString();

            CarregarFuncionarios();
            CarregarDadosAtuaisDoBar();
        }

        private void CarregarFuncionarios()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = @"
                        SELECT ID_Funcionario, Nome 
                        FROM dbo.vw_FuncionariosDetalhados";

                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        comboBox1.DataSource = dt;
                        comboBox1.DisplayMember = "Nome";
                        comboBox1.ValueMember = "ID_Funcionario";
                        comboBox1.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar funcionários: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void CarregarDadosAtuaisDoBar()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = "SELECT [Estado], FK_ID_Funcionario FROM dbo.vw_BaresDetalhados WHERE [ID do Bar] = @ID_Bar";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID_Bar", idBar);
                        conn.Open();

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                checkBox1.Checked = string.Equals(reader["Estado"].ToString(), "Aberto", StringComparison.OrdinalIgnoreCase);

                                if (reader["FK_ID_Funcionario"] != DBNull.Value)
                                {
                                    comboBox1.SelectedValue = reader["FK_ID_Funcionario"];
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar dados do bar: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

     
        private void Guardar_Click(object sender, EventArgs e)
        {
            if (comboBox1.SelectedValue == null)
            {
                MessageBox.Show("Por favor, selecione um funcionário para o bar.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("dbo.sp_AlterarBar", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@ID_Bar", idBar);
                        cmd.Parameters.AddWithValue("@Aberto", checkBox1.Checked);
                        cmd.Parameters.AddWithValue("@FK_ID_Funcionario", comboBox1.SelectedValue);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Bar atualizado com sucesso!", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message, "Erro de Validação", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro inesperado: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Cancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }
    }
}