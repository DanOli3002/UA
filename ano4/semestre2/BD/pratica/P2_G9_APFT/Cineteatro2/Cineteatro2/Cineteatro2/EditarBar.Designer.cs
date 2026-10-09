namespace Cineteatro2
{
    partial class EditarBar
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
            this.id_lable = new System.Windows.Forms.Label();
            this.estado_lable = new System.Windows.Forms.Label();
            this.funcionario_label = new System.Windows.Forms.Label();
            this.id = new System.Windows.Forms.Label();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.Guardar = new System.Windows.Forms.Button();
            this.Cancelar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // id_lable
            // 
            this.id_lable.AutoSize = true;
            this.id_lable.Location = new System.Drawing.Point(56, 9);
            this.id_lable.Name = "id_lable";
            this.id_lable.Size = new System.Drawing.Size(21, 13);
            this.id_lable.TabIndex = 0;
            this.id_lable.Text = "ID:";
            // 
            // estado_lable
            // 
            this.estado_lable.AutoSize = true;
            this.estado_lable.Location = new System.Drawing.Point(34, 35);
            this.estado_lable.Name = "estado_lable";
            this.estado_lable.Size = new System.Drawing.Size(43, 13);
            this.estado_lable.TabIndex = 1;
            this.estado_lable.Text = "Estado:";
            // 
            // funcionario_label
            // 
            this.funcionario_label.AutoSize = true;
            this.funcionario_label.Location = new System.Drawing.Point(12, 60);
            this.funcionario_label.Name = "funcionario_label";
            this.funcionario_label.Size = new System.Drawing.Size(65, 13);
            this.funcionario_label.TabIndex = 2;
            this.funcionario_label.Text = "Funcionario:";
            // 
            // id
            // 
            this.id.AutoSize = true;
            this.id.Location = new System.Drawing.Point(84, 9);
            this.id.Name = "id";
            this.id.Size = new System.Drawing.Size(15, 13);
            this.id.TabIndex = 3;
            this.id.Text = "id";
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(83, 35);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(57, 17);
            this.checkBox1.TabIndex = 4;
            this.checkBox1.Text = "Aberto";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(83, 58);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(163, 21);
            this.comboBox1.TabIndex = 5;
            // 
            // Guardar
            // 
            this.Guardar.Location = new System.Drawing.Point(175, 137);
            this.Guardar.Name = "Guardar";
            this.Guardar.Size = new System.Drawing.Size(75, 23);
            this.Guardar.TabIndex = 6;
            this.Guardar.Text = "Guardar";
            this.Guardar.UseVisualStyleBackColor = true;
            this.Guardar.Click += new System.EventHandler(this.Guardar_Click);
            // 
            // Cancelar
            // 
            this.Cancelar.Location = new System.Drawing.Point(37, 137);
            this.Cancelar.Name = "Cancelar";
            this.Cancelar.Size = new System.Drawing.Size(75, 23);
            this.Cancelar.TabIndex = 7;
            this.Cancelar.Text = "Cancelar";
            this.Cancelar.UseVisualStyleBackColor = true;
            this.Cancelar.Click += new System.EventHandler(this.Cancelar_Click);
            // 
            // EditarBar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(282, 172);
            this.Controls.Add(this.Cancelar);
            this.Controls.Add(this.Guardar);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.id);
            this.Controls.Add(this.funcionario_label);
            this.Controls.Add(this.estado_lable);
            this.Controls.Add(this.id_lable);
            this.Name = "EditarBar";
            this.Text = "Editar Bar";
            this.Load += new System.EventHandler(this.EditarBar_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label id_lable;
        private System.Windows.Forms.Label estado_lable;
        private System.Windows.Forms.Label funcionario_label;
        private System.Windows.Forms.Label id;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Button Guardar;
        private System.Windows.Forms.Button Cancelar;
    }
}