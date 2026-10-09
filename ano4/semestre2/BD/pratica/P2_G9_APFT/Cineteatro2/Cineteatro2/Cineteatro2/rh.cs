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
    public partial class rh : Form
    {
        public rh()
        {
            InitializeComponent();
        }

        private void rh_Load(object sender, EventArgs e)
        {
            CarregarFuncionarios();
        }

        private void CarregarFuncionarios()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = @"
                        SELECT 
                            ID_Funcionario AS [ID],
                            Nome AS [Nome],
                            Funcao AS [Função],
                            Salario AS [Salário (€)],
                            NIF AS [NIF],
                            Telefone AS [Telefone],
                            Morada AS [Morada]
                        FROM dbo.vw_FuncionariosDetalhados";

                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        dataGridView1.DataSource = dt;

                        dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                        dataGridView1.ReadOnly = true;
                        dataGridView1.AllowUserToAddRows = false;
                        dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                        dataGridView1.MultiSelect = false;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar a lista de funcionários: " + ex.Message, "Erro de Base de Dados", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnRemover_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                long idFuncionario = Convert.ToInt64(dataGridView1.SelectedRows[0].Cells["ID"].Value);
                string nomeFuncionario = dataGridView1.SelectedRows[0].Cells["Nome"].Value.ToString();

                DialogResult resposta = MessageBox.Show($"Tem a certeza que deseja remover o funcionário {nomeFuncionario} (ID: {idFuncionario})?",
                    "Confirmar Eliminação", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                if (resposta == DialogResult.Yes)
                {
                    try
                    {
                        using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                        {
                            using (SqlCommand cmd = new SqlCommand("dbo.sp_RemoverFuncionario", conn))
                            {
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@ID_Funcionario", idFuncionario);

                                conn.Open();
                                cmd.ExecuteNonQuery();
                            }
                        }

                        MessageBox.Show("Funcionário removido com sucesso!", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        CarregarFuncionarios();
                    }
                    catch (SqlException)
                    {
                        MessageBox.Show("Não é possível remover este funcionário. Ele está associado à gerência de um bar ou à organização de um evento ativo.",
                            "Restrição de Integridade", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Erro inesperado ao remover: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            else
            {
                MessageBox.Show("Por favor, selecione uma linha completa na tabela para poder remover.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }


        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            using (AdicionarFuncionario formAdd = new AdicionarFuncionario())
            {
                if (formAdd.ShowDialog() == DialogResult.OK)
                {
                    CarregarFuncionarios();
                }
            }
        }
    }
}