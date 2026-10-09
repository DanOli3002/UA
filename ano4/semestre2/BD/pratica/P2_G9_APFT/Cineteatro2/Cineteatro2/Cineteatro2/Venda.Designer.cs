namespace Cineteatro2
{
    partial class Venda
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
            this.id_label = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.producto_select = new System.Windows.Forms.ComboBox();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.metodo_pagamento = new System.Windows.Forms.ComboBox();
            this.nif_box = new System.Windows.Forms.TextBox();
            this.btn_venda = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(146, 31);
            this.label1.TabIndex = 0;
            this.label1.Text = "ID do Bar:";
            // 
            // id_label
            // 
            this.id_label.AutoSize = true;
            this.id_label.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.id_label.Location = new System.Drawing.Point(164, 9);
            this.id_label.Name = "id_label";
            this.id_label.Size = new System.Drawing.Size(37, 31);
            this.id_label.TabIndex = 1;
            this.id_label.Text = "id";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(26, 90);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Producto:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(15, 145);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Quantidade:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(15, 202);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(64, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Pagamento:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(52, 258);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(27, 13);
            this.label5.TabIndex = 5;
            this.label5.Text = "NIF:";
            // 
            // producto_select
            // 
            this.producto_select.FormattingEnabled = true;
            this.producto_select.Location = new System.Drawing.Point(85, 87);
            this.producto_select.Name = "producto_select";
            this.producto_select.Size = new System.Drawing.Size(166, 21);
            this.producto_select.TabIndex = 6;
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(86, 138);
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(165, 20);
            this.numericUpDown1.TabIndex = 7;
            // 
            // metodo_pagamento
            // 
            this.metodo_pagamento.FormattingEnabled = true;
            this.metodo_pagamento.Location = new System.Drawing.Point(85, 199);
            this.metodo_pagamento.Name = "metodo_pagamento";
            this.metodo_pagamento.Size = new System.Drawing.Size(166, 21);
            this.metodo_pagamento.TabIndex = 8;
            // 
            // nif_box
            // 
            this.nif_box.Location = new System.Drawing.Point(85, 258);
            this.nif_box.Name = "nif_box";
            this.nif_box.Size = new System.Drawing.Size(166, 20);
            this.nif_box.TabIndex = 9;
            // 
            // btn_venda
            // 
            this.btn_venda.Location = new System.Drawing.Point(133, 362);
            this.btn_venda.Name = "btn_venda";
            this.btn_venda.Size = new System.Drawing.Size(118, 33);
            this.btn_venda.TabIndex = 10;
            this.btn_venda.Text = "Vender";
            this.btn_venda.UseVisualStyleBackColor = true;
            this.btn_venda.Click += new System.EventHandler(this.btnVender_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(403, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(139, 31);
            this.label6.TabIndex = 11;
            this.label6.Text = "Historico:";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(409, 87);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(379, 308);
            this.dataGridView1.TabIndex = 12;
            // 
            // Venda
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.btn_venda);
            this.Controls.Add(this.nif_box);
            this.Controls.Add(this.metodo_pagamento);
            this.Controls.Add(this.numericUpDown1);
            this.Controls.Add(this.producto_select);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.id_label);
            this.Controls.Add(this.label1);
            this.Name = "Venda";
            this.Text = "Venda";
            this.Load += new System.EventHandler(this.Venda_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label id_label;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox producto_select;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.ComboBox metodo_pagamento;
        private System.Windows.Forms.TextBox nif_box;
        private System.Windows.Forms.Button btn_venda;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}