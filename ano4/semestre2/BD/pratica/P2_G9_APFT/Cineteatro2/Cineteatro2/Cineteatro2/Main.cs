using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Cineteatro2
{
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
        }

        private void Main_Load(object sender, EventArgs e)
        {

        }

    
        private void btnBilheteira_Click(object sender, EventArgs e)
        {
        Bilheteira formBilheteira = new Bilheteira();

        formBilheteira.Show();

    

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btnBar_Click(object sender, EventArgs e)
        {
            Bar formBar = new Bar();

            formBar.Show();
        }

        private void btnRH_Click(object sender, EventArgs e)
        {
            rh formRH = new rh();

            formRH.Show();
        }
    }
}
