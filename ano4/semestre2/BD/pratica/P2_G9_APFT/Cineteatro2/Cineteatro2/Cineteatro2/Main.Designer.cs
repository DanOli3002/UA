namespace Cineteatro2
{
    partial class Main
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
            this.btnBilheteira = new System.Windows.Forms.Button();
            this.btnBar = new System.Windows.Forms.Button();
            this.btnRH = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnBilheteira
            // 
            this.btnBilheteira.Location = new System.Drawing.Point(448, 214);
            this.btnBilheteira.Name = "btnBilheteira";
            this.btnBilheteira.Size = new System.Drawing.Size(105, 44);
            this.btnBilheteira.TabIndex = 0;
            this.btnBilheteira.Text = "Bilheteira";
            this.btnBilheteira.UseVisualStyleBackColor = true;
            this.btnBilheteira.Click += new System.EventHandler(this.btnBilheteira_Click);
            // 
            // btnBar
            // 
            this.btnBar.Location = new System.Drawing.Point(343, 214);
            this.btnBar.Name = "btnBar";
            this.btnBar.Size = new System.Drawing.Size(105, 44);
            this.btnBar.TabIndex = 1;
            this.btnBar.Text = "Bar";
            this.btnBar.UseVisualStyleBackColor = true;
            this.btnBar.Click += new System.EventHandler(this.btnBar_Click);
            // 
            // btnRH
            // 
            this.btnRH.Location = new System.Drawing.Point(238, 214);
            this.btnRH.Name = "btnRH";
            this.btnRH.Size = new System.Drawing.Size(105, 44);
            this.btnRH.TabIndex = 2;
            this.btnRH.Text = "Recursos Humanos";
            this.btnRH.UseVisualStyleBackColor = true;
            this.btnRH.Click += new System.EventHandler(this.btnRH_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(271, 118);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(249, 39);
            this.label1.TabIndex = 3;
            this.label1.Text = "CINETEATRO";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnRH);
            this.Controls.Add(this.btnBar);
            this.Controls.Add(this.btnBilheteira);
            this.Name = "Main";
            this.Text = "Main";
            this.Load += new System.EventHandler(this.Main_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnBilheteira;
        private System.Windows.Forms.Button btnBar;
        private System.Windows.Forms.Button btnRH;
        private System.Windows.Forms.Label label1;
    }
}