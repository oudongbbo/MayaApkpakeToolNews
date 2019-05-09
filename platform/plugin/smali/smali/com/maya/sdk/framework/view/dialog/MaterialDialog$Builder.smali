.class Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Builder"
.end annotation


# instance fields
.field private mAlertDialogWindow:Landroid/view/Window;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mMessageContentRoot:Landroid/view/ViewGroup;

.field private mMessageView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method private constructor <init>(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)V
    .locals 9

    .line 237
    iput-object p1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1, v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$102(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 239
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 241
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 243
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 245
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 246
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 249
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "maya_layout_material_dialog"

    const-string v4, "layout"

    invoke-static {v1, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "contentView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 253
    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "maya_material_bg_dialog_window"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 255
    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 258
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 259
    .local v1, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 260
    .local v3, "mWidthScale":F
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_0

    .line 263
    :cond_0
    const v3, 0x3f59999a    # 0.85f

    .line 265
    :goto_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 267
    .local v4, "width":I
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    const/4 v6, -0x2

    invoke-virtual {v5, v4, v6}, Landroid/view/Window;->setLayout(II)V

    .line 269
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "title"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    .line 270
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "message"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    .line 271
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "buttonLayout"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 272
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "btn_p"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    # setter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$302(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 273
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "btn_n"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    # setter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$402(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 274
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "message_content_root"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    .line 277
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$500(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 278
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "contentView"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 279
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$500(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    .end local v5    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mTitleResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$600(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mTitleResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$600(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->setTitle(I)V

    .line 285
    :cond_2
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$700(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 286
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$700(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :cond_3
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$700(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x8

    if-nez v5, :cond_4

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mTitleResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$600(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    if-nez v5, :cond_4

    .line 289
    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_4
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessageResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$800(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 292
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessageResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$800(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->setMessage(I)V

    .line 294
    :cond_5
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$900(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 295
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$900(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    :cond_6
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1000(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    .line 298
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1000(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    .line 300
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    iget-object v8, p1, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_7
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    if-eq v5, v7, :cond_8

    .line 303
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    .line 305
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    iget-object v8, p1, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    :cond_8
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pText:Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 308
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pText:Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    iget-object v8, p1, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    :cond_9
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nText:Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 314
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nText:Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    iget-object v5, p1, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_a
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pText:Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->pId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1000(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 319
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    :cond_b
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nText:Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->nId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v2

    if-ne v2, v7, :cond_c

    .line 322
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    :cond_c
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mBackgroundResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1500(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v2

    if-eq v2, v7, :cond_d

    .line 325
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "material_background"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 326
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mBackgroundResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1500(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 328
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_d
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1600(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 329
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "material_background"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 330
    .restart local v2    # "linearLayout":Landroid/widget/LinearLayout;
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1600(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_e
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessageContentView:Landroid/view/View;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1700(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 334
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessageContentView:Landroid/view/View;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1700(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 335
    :cond_f
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessageContentViewResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1800(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 336
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mMessageContentViewResId:I
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1800(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->setContentView(I)V

    .line 338
    :cond_10
    :goto_1
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mCancelOutside:Z
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$1900(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mCancelable:Z
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2000(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 340
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 341
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 343
    :cond_11
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 344
    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 346
    :cond_12
    return-void
.end method

.method synthetic constructor <init>(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Lcom/maya/sdk/framework/view/dialog/MaterialDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    .param p2, "x1"    # Lcom/maya/sdk/framework/view/dialog/MaterialDialog$1;

    .line 229
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;-><init>(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;

    .line 229
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    return-object v0
.end method


# virtual methods
.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 497
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "material_background"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 498
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 499
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .param p1, "resId"    # I

    .line 502
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "material_background"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 503
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 504
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .line 510
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 511
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "canceledOnTouchOutside"    # Z

    .line 507
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 508
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .line 490
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 493
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 494
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .line 461
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 463
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    invoke-static {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2500(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/ListView;)V

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "message_content_view"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 468
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 470
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    .line 473
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_3

    .line 474
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    .line 475
    .local v4, "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 476
    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 477
    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 472
    .end local v4    # "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 357
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 363
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 396
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 397
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 399
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "maya_material_bg_card"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 401
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const/4 v2, 0x0

    const/16 v3, 0xde

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 403
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 404
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 405
    iget-object v3, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v4, 0x41000000    # 8.0f

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dip2px(F)I
    invoke-static {v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v3

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 406
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v3, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 408
    const/16 v3, 0x14

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v6, 0x41100000    # 9.0f

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dip2px(F)I
    invoke-static {v5, v6}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    :goto_0
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 375
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 376
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "maya_material_bg_card"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 380
    const/16 v2, 0xff

    const/16 v3, 0x23

    const/16 v4, 0x9f

    const/16 v5, 0xf2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 383
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 384
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v3, 0x41400000    # 12.0f

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dip2px(F)I
    invoke-static {v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v2

    iget-object v3, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v4, 0x42000000    # 32.0f

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dip2px(F)I
    invoke-static {v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v3

    iget-object v4, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v5, 0x41100000    # 9.0f

    # invokes: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dip2px(F)I
    invoke-static {v4, v5}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 385
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v2, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 349
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 353
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 418
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "contentView"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 419
    .local v0, "l":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 420
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 422
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    new-instance v2, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder$1;-><init>(Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 435
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 439
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 441
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 442
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 443
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 444
    .local v5, "editText":Landroid/widget/EditText;
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 445
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 446
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 441
    .end local v5    # "editText":Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    .end local v4    # "i":I
    :cond_1
    nop

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 450
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_2

    .line 451
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    .line 452
    .local v4, "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 453
    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 454
    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 449
    .end local v4    # "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 458
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_3
    return-void
.end method
