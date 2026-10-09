using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Cineteatro2
{
    public partial class AdicionarFuncionario : Form
    {
        public AdicionarFuncionario()
        {
            InitializeComponent();
        }

        private void AdicionarFuncionaro_Load(object sender, EventArgs e)
        {
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(nif.Text) || string.IsNullOrWhiteSpace(nome.Text) ||
                string.IsNullOrWhiteSpace(função.Text) || string.IsNullOrWhiteSpace(salario.Text))
            {
                MessageBox.Show("Por favor, preencha todos os campos obrigatórios (NIF, Nome, Função e Salário).",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (!long.TryParse(nif.Text.Trim(), out long nifValor))
            {
                MessageBox.Show("O NIF introduzido é inválido. Digite apenas números.",
                    "Erro de Validação", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            string salarioTexto = salario.Text.Trim().Replace(',', '.');
            if (!decimal.TryParse(salarioTexto, System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture, out decimal salarioValor))
            {
                MessageBox.Show("O formato do salário é inválido. Exemplo correto: 950.50",
                    "Erro de Validação", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            using (SqlConnection conn = new SqlConnection(DbConfig.ConnectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand("dbo.sp_AdicionarFuncionario", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@NIF", nifValor);
                        cmd.Parameters.AddWithValue("@Nome", nome.Text.Trim());
                        cmd.Parameters.AddWithValue("@Telefone", string.IsNullOrWhiteSpace(telefone.Text) ? (object)DBNull.Value : telefone.Text.Trim());
                        cmd.Parameters.AddWithValue("@Morada", string.IsNullOrWhiteSpace(morada.Text) ? (object)DBNull.Value : morada.Text.Trim());
                        cmd.Parameters.AddWithValue("@Funcao", função.Text.Trim());
                        cmd.Parameters.AddWithValue("@Salario", salarioValor);

                        cmd.ExecuteNonQuery();
                    }

                    MessageBox.Show("Funcionário registado com sucesso!",
                        "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    this.DialogResult = DialogResult.OK;
                    this.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Erro ao gravar dados: " + ex.Message, "Erro Crítico", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }
    }
}