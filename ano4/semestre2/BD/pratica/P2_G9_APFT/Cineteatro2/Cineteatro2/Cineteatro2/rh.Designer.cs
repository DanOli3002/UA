namespace Cineteatro2
{
    partial class rh
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Adicionar = new System.Windows.Forms.Button();
            this.Remover = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(13, 13);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(775, 335);
            this.dataGridView1.TabIndex = 0;
            // 
            // Adicionar
            // 
            this.Adicionar.Location = new System.Drawing.Point(694, 382);
            this.Adicionar.Name = "Adicionar";
            this.Adicionar.Size = new System.Drawing.Size(94, 39);
            this.Adicionar.TabIndex = 1;
            this.Adicionar.Text = "Adicionar";
            this.Adicionar.UseVisualStyleBackColor = true;
            this.Adicionar.Click += new System.EventHandler(this.btnAdicionar_Click);
            // 
            // Remover
            // 
            this.Remover.Location = new System.Drawing.Point(577, 382);
            this.Remover.Name = "Remover";
            this.Remover.Size = new System.Drawing.Size(94, 39);
            this.Remover.TabIndex = 2;
            this.Remover.Text = "Remover";
            this.Remover.UseVisualStyleBackColor = true;
            this.Remover.Click += new System.EventHandler(this.btnRemover_Click);
            // 
            // rh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.Remover);
            this.Controls.Add(this.Adicionar);
            this.Controls.Add(this.dataGridView1);
            this.Name = "rh";
            this.Text = "rh";
            this.Load += new System.EventHandler(this.rh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button Adicionar;
        private System.Windows.Forms.Button Remover;
    }
}