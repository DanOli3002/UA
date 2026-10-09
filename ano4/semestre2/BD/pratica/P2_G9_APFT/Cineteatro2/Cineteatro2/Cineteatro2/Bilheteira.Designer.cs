namespace Cineteatro2
{
    partial class Bilheteira
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
            this.btnEventos = new System.Windows.Forms.Button();
            this.btnBilhetes = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btnRemover = new System.Windows.Forms.Button();
            this.btnAdicionar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnEventos
            // 
            this.btnEventos.Location = new System.Drawing.Point(12, 13);
            this.btnEventos.Name = "btnEventos";
            this.btnEventos.Size = new System.Drawing.Size(114, 42);
            this.btnEventos.TabIndex = 0;
            this.btnEventos.Text = "Eventos";
            this.btnEventos.UseVisualStyleBackColor = true;
            this.btnEventos.Click += new System.EventHandler(this.btnEventos_Click);
            // 
            // btnBilhetes
            // 
            this.btnBilhetes.Location = new System.Drawing.Point(12, 61);
            this.btnBilhetes.Name = "btnBilhetes";
            this.btnBilhetes.Size = new System.Drawing.Size(114, 42);
            this.btnBilhetes.TabIndex = 1;
            this.btnBilhetes.Text = "Bilhetes";
            this.btnBilhetes.UseVisualStyleBackColor = true;
            this.btnBilhetes.Click += new System.EventHandler(this.btnBilhetes_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(147, 13);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(641, 338);
            this.dataGridView1.TabIndex = 2;
            // 
            // btnRemover
            // 
            this.btnRemover.Location = new System.Drawing.Point(674, 396);
            this.btnRemover.Name = "btnRemover";
            this.btnRemover.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.btnRemover.Size = new System.Drawing.Size(114, 42);
            this.btnRemover.TabIndex = 3;
            this.btnRemover.Text = "Remover";
            this.btnRemover.UseVisualStyleBackColor = true;
            this.btnRemover.Click += new System.EventHandler(this.btnRemover_Click);
            // 
            // btnAdicionar
            // 
            this.btnAdicionar.Location = new System.Drawing.Point(554, 396);
            this.btnAdicionar.Name = "btnAdicionar";
            this.btnAdicionar.Size = new System.Drawing.Size(114, 42);
            this.btnAdicionar.TabIndex = 4;
            this.btnAdicionar.Text = "Adicionar";
            this.btnAdicionar.UseVisualStyleBackColor = true;
            this.btnAdicionar.Click += new System.EventHandler(this.btnAdicionar_Click);
            // 
            // Bilheteira
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnAdicionar);
            this.Controls.Add(this.btnRemover);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btnBilhetes);
            this.Controls.Add(this.btnEventos);
            this.Name = "Bilheteira";
            this.Text = "Bilheteira";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnEventos;
        private System.Windows.Forms.Button btnBilhetes;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btnRemover;
        private System.Windows.Forms.Button btnAdicionar;
    }
}