using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Cineteatro2
{
    public partial class FormAdicionarBilhete : Form
    {
        public FormAdicionarBilhete()
        {
            InitializeComponent();
        }

        private void FormAdicionarBilhete_Load(object sender, EventArgs e)
        {
            CarregarEventos();
            CarregarBilheteiras();
        }

        #region 1. Carregar Dados para as ComboBoxes

        private void CarregarEventos()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = "SELECT ID_Evento, Nome FROM dbo.vw_Eventos";
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        EventoInput.DataSource = dt;
                        EventoInput.DisplayMember = "Nome";
                        EventoInput.ValueMember = "ID_Evento";
                        EventoInput.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar eventos: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void CarregarBilheteiras()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    string query = "SELECT ID_Bilheteira FROM dbo.vw_Bilheteiras";
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        BilheteiraInput.DataSource = dt;
                        BilheteiraInput.DisplayMember = "ID_Bilheteira";
                        BilheteiraInput.ValueMember = "ID_Bilheteira";
                        BilheteiraInput.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar bilheteiras: " + ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #endregion

        #region 2. Ação do Botão Vender / Gravar

        private void btnVender_Click(object sender, EventArgs e)
        {
            if (EventoInput.SelectedValue == null)
            {
                MessageBox.Show("Por favor, selecione um evento.", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrWhiteSpace(LugarInput.Text))
            {
                MessageBox.Show("Por favor, indique o lugar.", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (BilheteiraInput.SelectedValue == null)
            {
                MessageBox.Show("Por favor, selecione a bilheteira.", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (!long.TryParse(ReciboInput.Text, out long idRecibo))
            {
                MessageBox.Show("Por favor, insira um número de recibo válido.", "Validação", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("dbo.sp_ComprarBilhete", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@Lugar", LugarInput.Text.Trim());
                        cmd.Parameters.AddWithValue("@ID_Evento", (long)EventoInput.SelectedValue);
                        cmd.Parameters.AddWithValue("@ID_Bilheteira", (long)BilheteiraInput.SelectedValue);
                        cmd.Parameters.AddWithValue("@ID_Recibo", idRecibo);

                        cmd.Parameters.AddWithValue("@Data", dateTimePicker1.Value.Date);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Bilhete emitido e vendido com sucesso!", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);

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