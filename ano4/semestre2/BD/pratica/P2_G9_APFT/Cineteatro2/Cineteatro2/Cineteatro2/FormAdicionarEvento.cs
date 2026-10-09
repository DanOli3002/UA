using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Cineteatro2
{
    public partial class FormAdicionarEvento : Form
    {
        public FormAdicionarEvento()
        {
            InitializeComponent();
        }

        private void FormAdicionarEvento_Load(object sender, EventArgs e)
        {
            CarregarEdificios();
        }

        #region 1. Carregar Dados para a ComboBox

        private void CarregarEdificios()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = "SELECT Nome FROM dbo.vw_Edificios";
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        EdificioInput.DataSource = dt;
                        EdificioInput.DisplayMember = "Nome";
                        EdificioInput.ValueMember = "Nome";
                        EdificioInput.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar edifícios: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #endregion

        #region 2. Ação do Botão Registar

        private void btnGravar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(NomeInput.Text))
            {
                MessageBox.Show("Por favor, insira o nome do evento.", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (!TimeSpan.TryParse(DuracaoInput.Text, out TimeSpan duracao))
            {
                MessageBox.Show("Por favor, insira uma duração válida no formato HH:MM:SS.", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(TipoInput.Text))
            {
                MessageBox.Show("Por favor, indique o tipo de evento (Ex: Cinema, Teatro).", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (EdificioInput.SelectedValue == null)
            {
                MessageBox.Show("Por favor, selecione um edifício para o evento.", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("dbo.sp_AdicionarEvento", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@Nome", NomeInput.Text.Trim());
                        cmd.Parameters.AddWithValue("@Duracao", duracao);
                        cmd.Parameters.AddWithValue("@Data", DataInput.Value.Date);
                        cmd.Parameters.AddWithValue("@Tipo", TipoInput.Text.Trim());
                        cmd.Parameters.AddWithValue("@FK_NomeEdificio", EdificioInput.SelectedValue.ToString());

                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Evento registado com sucesso!", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);

                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message, "Erro na Base de Dados", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ocorreu um erro inesperado: " + ex.Message, "Erro Crítico", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        #endregion
    }
}