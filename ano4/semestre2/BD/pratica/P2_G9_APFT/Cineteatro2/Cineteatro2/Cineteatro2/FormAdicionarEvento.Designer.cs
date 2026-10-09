namespace Cineteatro2
{
    partial class FormAdicionarEvento
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
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnRegistar = new System.Windows.Forms.Button();
            this.TipoInput = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.EdificioInput = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.DataInput = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.NomeInput = new System.Windows.Forms.TextBox();
            this.DuracaoInput = new System.Windows.Forms.MaskedTextBox();
            this.SuspendLayout();
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(520, 379);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(110, 32);
            this.btnCancelar.TabIndex = 23;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnRegistar
            // 
            this.btnRegistar.Location = new System.Drawing.Point(636, 379);
            this.btnRegistar.Name = "btnRegistar";
            this.btnRegistar.Size = new System.Drawing.Size(110, 32);
            this.btnRegistar.TabIndex = 22;
            this.btnRegistar.Text = "Registar";
            this.btnRegistar.UseVisualStyleBackColor = true;
            this.btnRegistar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // TipoInput
            // 
            this.TipoInput.Location = new System.Drawing.Point(117, 197);
            this.TipoInput.Name = "TipoInput";
            this.TipoInput.Size = new System.Drawing.Size(301, 20);
            this.TipoInput.TabIndex = 21;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(55, 204);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(34, 13);
            this.label5.TabIndex = 20;
            this.label5.Text = "Tipo :";
            // 
            // EdificioInput
            // 
            this.EdificioInput.FormattingEnabled = true;
            this.EdificioInput.Location = new System.Drawing.Point(117, 249);
            this.EdificioInput.Name = "EdificioInput";
            this.EdificioInput.Size = new System.Drawing.Size(301, 21);
            this.EdificioInput.TabIndex = 19;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(55, 257);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(47, 13);
            this.label4.TabIndex = 18;
            this.label4.Text = "Edificio :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(54, 140);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 13);
            this.label3.TabIndex = 16;
            this.label3.Text = "Duração:";
            // 
            // DataInput
            // 
            this.DataInput.Location = new System.Drawing.Point(117, 87);
            this.DataInput.Name = "DataInput";
            this.DataInput.Size = new System.Drawing.Size(301, 20);
            this.DataInput.TabIndex = 15;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(75, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(36, 13);
            this.label2.TabIndex = 14;
            this.label2.Text = "Data :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(67, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 12;
            this.label1.Text = "Nome:";
            // 
            // NomeInput
            // 
            this.NomeInput.Location = new System.Drawing.Point(117, 40);
            this.NomeInput.Name = "NomeInput";
            this.NomeInput.Size = new System.Drawing.Size(301, 20);
            this.NomeInput.TabIndex = 24;
            // 
            // DuracaoInput
            // 
            this.DuracaoInput.Location = new System.Drawing.Point(117, 133);
            this.DuracaoInput.Mask = "00:00:00";
            this.DuracaoInput.Name = "DuracaoInput";
            this.DuracaoInput.Size = new System.Drawing.Size(301, 20);
            this.DuracaoInput.TabIndex = 26;
            this.DuracaoInput.ValidatingType = typeof(System.DateTime);
            // 
            // FormAdicionarEvento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.DuracaoInput);
            this.Controls.Add(this.NomeInput);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnRegistar);
            this.Controls.Add(this.TipoInput);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.EdificioInput);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.DataInput);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FormAdicionarEvento";
            this.Text = "FormAdicionarEvento";
            this.Load += new System.EventHandler(this.FormAdicionarEvento_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnRegistar;
        private System.Windows.Forms.TextBox TipoInput;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox EdificioInput;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker DataInput;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox NomeInput;
        private System.Windows.Forms.MaskedTextBox DuracaoInput;
    }
}