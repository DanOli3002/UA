namespace Cineteatro2
{
    partial class AdicionarFuncionario
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.nome = new System.Windows.Forms.TextBox();
            this.telefone = new System.Windows.Forms.TextBox();
            this.função = new System.Windows.Forms.TextBox();
            this.nif = new System.Windows.Forms.TextBox();
            this.morada = new System.Windows.Forms.TextBox();
            this.salario = new System.Windows.Forms.TextBox();
            this.Adicionar = new System.Windows.Forms.Button();
            this.Cancelar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(36, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nome:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(351, 21);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(27, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "NIF:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 90);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Telefone:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(332, 90);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(46, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Morada:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(22, 184);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(46, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Função:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(336, 184);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(42, 13);
            this.label6.TabIndex = 5;
            this.label6.Text = "Salario:";
            // 
            // nome
            // 
            this.nome.Location = new System.Drawing.Point(81, 21);
            this.nome.Name = "nome";
            this.nome.Size = new System.Drawing.Size(241, 20);
            this.nome.TabIndex = 6;
            // 
            // telefone
            // 
            this.telefone.Location = new System.Drawing.Point(81, 90);
            this.telefone.Name = "telefone";
            this.telefone.Size = new System.Drawing.Size(241, 20);
            this.telefone.TabIndex = 7;
            // 
            // função
            // 
            this.função.Location = new System.Drawing.Point(81, 181);
            this.função.Name = "função";
            this.função.Size = new System.Drawing.Size(241, 20);
            this.função.TabIndex = 8;
            // 
            // nif
            // 
            this.nif.Location = new System.Drawing.Point(384, 21);
            this.nif.Name = "nif";
            this.nif.Size = new System.Drawing.Size(241, 20);
            this.nif.TabIndex = 9;
            // 
            // morada
            // 
            this.morada.Location = new System.Drawing.Point(384, 90);
            this.morada.Name = "morada";
            this.morada.Size = new System.Drawing.Size(241, 20);
            this.morada.TabIndex = 10;
            // 
            // salario
            // 
            this.salario.Location = new System.Drawing.Point(384, 181);
            this.salario.Name = "salario";
            this.salario.Size = new System.Drawing.Size(241, 20);
            this.salario.TabIndex = 11;
            // 
            // Adicionar
            // 
            this.Adicionar.Location = new System.Drawing.Point(496, 265);
            this.Adicionar.Name = "Adicionar";
            this.Adicionar.Size = new System.Drawing.Size(129, 30);
            this.Adicionar.TabIndex = 12;
            this.Adicionar.Text = "Adicionar";
            this.Adicionar.UseVisualStyleBackColor = true;
            this.Adicionar.Click += new System.EventHandler(this.btnAdicionar_Click);
            // 
            // Cancelar
            // 
            this.Cancelar.Location = new System.Drawing.Point(354, 265);
            this.Cancelar.Name = "Cancelar";
            this.Cancelar.Size = new System.Drawing.Size(129, 30);
            this.Cancelar.TabIndex = 13;
            this.Cancelar.Text = "Cancelar";
            this.Cancelar.UseVisualStyleBackColor = true;
            this.Cancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // AdicionarFuncionario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(643, 326);
            this.Controls.Add(this.Cancelar);
            this.Controls.Add(this.Adicionar);
            this.Controls.Add(this.salario);
            this.Controls.Add(this.morada);
            this.Controls.Add(this.nif);
            this.Controls.Add(this.função);
            this.Controls.Add(this.telefone);
            this.Controls.Add(this.nome);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "AdicionarFuncionario";
            this.Text = "AdicionarFuncionaro";
            this.Load += new System.EventHandler(this.AdicionarFuncionaro_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox nome;
        private System.Windows.Forms.TextBox telefone;
        private System.Windows.Forms.TextBox função;
        private System.Windows.Forms.TextBox nif;
        private System.Windows.Forms.TextBox morada;
        private System.Windows.Forms.TextBox salario;
        private System.Windows.Forms.Button Adicionar;
        private System.Windows.Forms.Button Cancelar;
    }
}