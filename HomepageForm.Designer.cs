using System.Drawing;
using System.Windows.Forms;

namespace RecipeRedux
{
    partial class HomepageForm
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
            this.ingredientsPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.ingredientsTab = new System.Windows.Forms.TabPage();
            this.pantryTab = new System.Windows.Forms.TabPage();
            this.favoritesTab = new System.Windows.Forms.TabPage();
            this.uxRecipeDisplay = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.uxRecipeCountLabel = new System.Windows.Forms.Label();
            this.uxMiscComboBox = new System.Windows.Forms.ComboBox();
            this.uxFindRecipesButton = new System.Windows.Forms.Button();
            this.uxCookTimeFilter = new System.Windows.Forms.ComboBox();
            this.uxFilterLabel = new System.Windows.Forms.Label();
            this.uxNumberOfIngredientsFilter = new System.Windows.Forms.ComboBox();
            this.tabControl.SuspendLayout();
            this.SuspendLayout();
            // 
            // ingredientsPanel
            // 
            this.ingredientsPanel.AutoScroll = true;
            this.ingredientsPanel.Location = new System.Drawing.Point(13, 34);
            this.ingredientsPanel.Name = "ingredientsPanel";
            this.ingredientsPanel.Size = new System.Drawing.Size(237, 320);
            this.ingredientsPanel.TabIndex = 0;
            // 
            // tabControl
            // 
            this.tabControl.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.tabControl.Controls.Add(this.ingredientsTab);
            this.tabControl.Controls.Add(this.pantryTab);
            this.tabControl.Controls.Add(this.favoritesTab);
            this.tabControl.Location = new System.Drawing.Point(13, 12);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(389, 536);
            this.tabControl.TabIndex = 1;
            // 
            // ingredientsTab
            // 
            this.ingredientsTab.Location = new System.Drawing.Point(4, 22);
            this.ingredientsTab.Name = "ingredientsTab";
            this.ingredientsTab.Padding = new System.Windows.Forms.Padding(3);
            this.ingredientsTab.Size = new System.Drawing.Size(381, 510);
            this.ingredientsTab.TabIndex = 0;
            this.ingredientsTab.Text = "Ingredients";
            this.ingredientsTab.UseVisualStyleBackColor = true;
            // 
            // pantryTab
            // 
            this.pantryTab.Location = new System.Drawing.Point(4, 22);
            this.pantryTab.Name = "pantryTab";
            this.pantryTab.Padding = new System.Windows.Forms.Padding(3);
            this.pantryTab.Size = new System.Drawing.Size(381, 510);
            this.pantryTab.TabIndex = 1;
            this.pantryTab.Text = "Pantry";
            this.pantryTab.UseVisualStyleBackColor = true;
            // 
            // favoritesTab
            // 
            this.favoritesTab.Location = new System.Drawing.Point(4, 22);
            this.favoritesTab.Name = "favoritesTab";
            this.favoritesTab.Padding = new System.Windows.Forms.Padding(3);
            this.favoritesTab.Size = new System.Drawing.Size(381, 510);
            this.favoritesTab.TabIndex = 2;
            this.favoritesTab.Text = "Favorite Recipes";
            this.favoritesTab.UseVisualStyleBackColor = true;
            // 
            // uxRecipeDisplay
            // 
            this.uxRecipeDisplay.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1});
            this.uxRecipeDisplay.FullRowSelect = true;
            this.uxRecipeDisplay.GridLines = true;
            this.uxRecipeDisplay.HideSelection = false;
            this.uxRecipeDisplay.Location = new System.Drawing.Point(408, 102);
            this.uxRecipeDisplay.Name = "uxRecipeDisplay";
            this.uxRecipeDisplay.Size = new System.Drawing.Size(840, 474);
            this.uxRecipeDisplay.TabIndex = 2;
            this.uxRecipeDisplay.UseCompatibleStateImageBehavior = false;
            this.uxRecipeDisplay.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Recipe";
            this.columnHeader1.Width = 300;
            // 
            // uxRecipeCountLabel
            // 
            this.uxRecipeCountLabel.AutoSize = true;
            this.uxRecipeCountLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.uxRecipeCountLabel.Location = new System.Drawing.Point(508, 34);
            this.uxRecipeCountLabel.Name = "uxRecipeCountLabel";
            this.uxRecipeCountLabel.Size = new System.Drawing.Size(274, 29);
            this.uxRecipeCountLabel.TabIndex = 3;
            this.uxRecipeCountLabel.Text = "You can make X recipes";
            // 
            // uxMiscComboBox
            // 
            this.uxMiscComboBox.FormattingEnabled = true;
            this.uxMiscComboBox.Location = new System.Drawing.Point(17, 554);
            this.uxMiscComboBox.Name = "uxMiscComboBox";
            this.uxMiscComboBox.Size = new System.Drawing.Size(381, 21);
            this.uxMiscComboBox.TabIndex = 5;
            this.uxMiscComboBox.SelectedIndexChanged += new System.EventHandler(this.uxMiscComboBox_SelectedIndexChanged);
            // 
            // uxFindRecipesButton
            // 
            this.uxFindRecipesButton.Location = new System.Drawing.Point(408, 34);
            this.uxFindRecipesButton.Margin = new System.Windows.Forms.Padding(2);
            this.uxFindRecipesButton.Name = "uxFindRecipesButton";
            this.uxFindRecipesButton.Size = new System.Drawing.Size(89, 35);
            this.uxFindRecipesButton.TabIndex = 7;
            this.uxFindRecipesButton.Text = "Find Recipes!";
            this.uxFindRecipesButton.UseVisualStyleBackColor = true;
            this.uxFindRecipesButton.Click += new System.EventHandler(this.uxFindRecipesButton_Click);
            // 
            // uxCookTimeFilter
            // 
            this.uxCookTimeFilter.FormattingEnabled = true;
            this.uxCookTimeFilter.Location = new System.Drawing.Point(511, 75);
            this.uxCookTimeFilter.Name = "uxCookTimeFilter";
            this.uxCookTimeFilter.Size = new System.Drawing.Size(95, 21);
            this.uxCookTimeFilter.TabIndex = 8;
            this.uxCookTimeFilter.Text = "Cook Time";
            this.uxCookTimeFilter.SelectedIndexChanged += new System.EventHandler(this.uxCookTimeFilter_SelectedIndexChanged);
            // 
            // uxFilterLabel
            // 
            this.uxFilterLabel.AutoSize = true;
            this.uxFilterLabel.Location = new System.Drawing.Point(460, 78);
            this.uxFilterLabel.Name = "uxFilterLabel";
            this.uxFilterLabel.Size = new System.Drawing.Size(37, 13);
            this.uxFilterLabel.TabIndex = 9;
            this.uxFilterLabel.Text = "Filters:";
            // 
            // uxNumberOfIngredientsFilter
            // 
            this.uxNumberOfIngredientsFilter.FormattingEnabled = true;
            this.uxNumberOfIngredientsFilter.Location = new System.Drawing.Point(612, 75);
            this.uxNumberOfIngredientsFilter.Name = "uxNumberOfIngredientsFilter";
            this.uxNumberOfIngredientsFilter.Size = new System.Drawing.Size(128, 21);
            this.uxNumberOfIngredientsFilter.TabIndex = 11;
            this.uxNumberOfIngredientsFilter.Text = "Number of Ingredients";
            this.uxNumberOfIngredientsFilter.SelectedIndexChanged += new System.EventHandler(this.uxNumberOfIngredientsFilter_SelectedIndexChanged);
            // 
            // HomepageForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1260, 591);
            this.Controls.Add(this.uxNumberOfIngredientsFilter);
            this.Controls.Add(this.uxFilterLabel);
            this.Controls.Add(this.uxCookTimeFilter);
            this.Controls.Add(this.uxFindRecipesButton);
            this.Controls.Add(this.uxMiscComboBox);
            this.Controls.Add(this.uxRecipeCountLabel);
            this.Controls.Add(this.uxRecipeDisplay);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.ingredientsPanel);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "HomepageForm";
            this.Text = "Recipe Redux";
            this.tabControl.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private FlowLayoutPanel ingredientsPanel;
        private TabControl tabControl;
        private TabPage ingredientsTab;
        private TabPage pantryTab;
        private ListView uxRecipeDisplay;
        private Label uxRecipeCountLabel;
        private ComboBox uxMiscComboBox;
        private Button uxFindRecipesButton;
        private ColumnHeader columnHeader1;
        private ComboBox uxCookTimeFilter;
        private Label uxFilterLabel;
        private ComboBox uxNumberOfIngredientsFilter;
        private TabPage favoritesTab;
    }
}