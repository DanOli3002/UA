using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Cineteatro2
{
    public partial class Bilheteira : Form
    {
        private string modoAtual = "";

        public Bilheteira()
        {
            InitializeComponent();
        }

        #region 1. Navegação e Visualização

        private void btnBilhetes_Click(object sender, EventArgs e)
        {
            ExibirBilhetes();
            modoAtual = "Bilhetes";

            btnAdicionar.Text = "Adicionar Bilhete";
            btnRemover.Text = "Remover Bilhete";
        }

        private void btnEventos_Click(object sender, EventArgs e)
        {
            ExibirEventos();
            modoAtual = "Eventos";

            btnAdicionar.Text = "Adicionar Evento";
            btnRemover.Text = "Remover Evento";
        }

        private void ExibirBilhetes()
        {
            CarregarDadosNaGrid("SELECT * FROM dbo.vw_Bilhetes");
        }

        private void ExibirEventos()
        {
            CarregarDadosNaGrid("SELECT * FROM dbo.vw_Eventos");
        }

        private void CarregarDadosNaGrid(string query)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(DbConfig.ConnectionString))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        dataGridView1.DataSource = dataTable;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar dados: " + ex.Message, "Erro na Base de Dados", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #endregion

        #region 2. Operações (Adicionar e Remover)

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            if (modoAtual == "Bilhetes")
            {
                FormAdicionarBilhete formBilhete = new FormAdicionarBilhete();
                if (formBilhete.ShowDialog() == DialogResult.OK)
                {
                    ExibirBilhetes();
                }
            }
            else if (modoAtual == "Eventos")
            {
                FormAdicionarEvento formEvento = new FormAdicionarEvento();
                if (formEvento.ShowDialog() == DialogResult.OK)
                {
                    ExibirEventos();
                }
            }
            else
            {
                MessageBox.Show("Por favor, selecione primeiro se deseja ver Bilhetes ou Eventos.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btnRemover_Click(object sender, EventArgs e)
        {
            if (dataGridView1.CurrentRow == null)
            {
                MessageBox.Show("Por favor, selecione uma linha na tabela para remover.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            DialogResult resposta = MessageBox.Show("Tem a certeza que deseja remover o registo selecionado?", "Confirmar Eliminação", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (resposta != DialogResult.Yes) return;

            try
            {
                using (SqlConnection connection = new SqlConnection(DbConfig.ConnectionString))
                {
                    connection.Open();

                    if (modoAtual == "Bilhetes")
                    {
                        var codigoBilhete = dataGridView1.CurrentRow.Cells["Codigo"].Value;

                        using (SqlCommand command = new SqlCommand("dbo.sp_RemoverBilhete", connection))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@Codigo", codigoBilhete);
                            command.ExecuteNonQuery();
                        }

                        MessageBox.Show("Bilhete removido com sucesso!", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        ExibirBilhetes();
                    }
                    else if (modoAtual == "Eventos")
                    {
                        var idEvento = dataGridView1.CurrentRow.Cells["ID_Evento"].Value;

                        using (SqlCommand command = new SqlCommand("dbo.sp_RemoverEvento", connection))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@ID_Evento", idEvento);
                            command.ExecuteNonQuery();
                        }

                        MessageBox.Show("Evento removido com sucesso!", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        ExibirEventos();
                    }
                }
            }
            catch (SqlException ex)
            {
                if (ex.Number == 547)
                {
                    MessageBox.Show("Não é possível remover este registo porque existem outros dados associados a ele no sistema.", "Erro de Integridade", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    MessageBox.Show(ex.Message, "Erro na Base de Dados", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ocorreu um erro inesperado: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #endregion
    }
}