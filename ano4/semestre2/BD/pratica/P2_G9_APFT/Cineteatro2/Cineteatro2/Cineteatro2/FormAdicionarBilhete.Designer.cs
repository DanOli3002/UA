namespace Cineteatro2
{
    partial class FormAdicionarBilhete
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
            this.EventoInput = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.LugarInput = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.BilheteiraInput = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.ReciboInput = new System.Windows.Forms.TextBox();
            this.btnVender = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(109, 75);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Evento:";
            // 
            // EventoInput
            // 
            this.EventoInput.FormattingEnabled = true;
            this.EventoInput.Location = new System.Drawing.Point(159, 67);
            this.EventoInput.Name = "EventoInput";
            this.EventoInput.Size = new System.Drawing.Size(301, 21);
            this.EventoInput.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(113, 115);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(40, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Lugar :";
            // 
            // LugarInput
            // 
            this.LugarInput.Location = new System.Drawing.Point(159, 107);
            this.LugarInput.Name = "LugarInput";
            this.LugarInput.Size = new System.Drawing.Size(301, 20);
            this.LugarInput.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(97, 284);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Bilheteira :";
            // 
            // BilheteiraInput
            // 
            this.BilheteiraInput.FormattingEnabled = true;
            this.BilheteiraInput.Location = new System.Drawing.Point(159, 276);
            this.BilheteiraInput.Name = "BilheteiraInput";
            this.BilheteiraInput.Size = new System.Drawing.Size(301, 21);
            this.BilheteiraInput.TabIndex = 7;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(97, 316);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(47, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Recibo :";
            // 
            // ReciboInput
            // 
            this.ReciboInput.Location = new System.Drawing.Point(159, 309);
            this.ReciboInput.Name = "ReciboInput";
            this.ReciboInput.Size = new System.Drawing.Size(301, 20);
            this.ReciboInput.TabIndex = 9;
            // 
            // btnVender
            // 
            this.btnVender.Location = new System.Drawing.Point(678, 406);
            this.btnVender.Name = "btnVender";
            this.btnVender.Size = new System.Drawing.Size(110, 32);
            this.btnVender.TabIndex = 10;
            this.btnVender.Text = "Vender";
            this.btnVender.UseVisualStyleBackColor = true;
            this.btnVender.Click += new System.EventHandler(this.btnVender_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(562, 406);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(110, 32);
            this.btnCancelar.TabIndex = 11;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(68, 159);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 13);
            this.label2.TabIndex = 12;
            this.label2.Text = "Data de Venda :";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(159, 152);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker1.TabIndex = 13;
            // 
            // FormAdicionarBilhete
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnVender);
            this.Controls.Add(this.ReciboInput);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.BilheteiraInput);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.LugarInput);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.EventoInput);
            this.Controls.Add(this.label1);
            this.Name = "FormAdicionarBilhete";
            this.Text = "FormAdicionarBilhete";
            this.Load += new System.EventHandler(this.FormAdicionarBilhete_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox EventoInput;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox LugarInput;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox BilheteiraInput;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox ReciboInput;
        private System.Windows.Forms.Button btnVender;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}