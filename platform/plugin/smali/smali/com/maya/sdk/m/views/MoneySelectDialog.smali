.class public Lcom/maya/sdk/m/views/MoneySelectDialog;
.super Landroid/app/Dialog;
.source "MoneySelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

.field private cancel:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private money:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/MoneySelectDialog;

    .line 16
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->callback:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/MoneySelectDialog;

    .line 16
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->money:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/MoneySelectDialog;

    .line 16
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, p2, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "id":I
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;

    const-string v2, "maya_dialog_theme_main"

    const-string v3, "style"

    invoke-virtual {p0, v1, v2, v3}, Lcom/maya/sdk/m/views/MoneySelectDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;

    const-string v1, "maya_dialog_money"

    const-string v2, "layout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/sdk/m/views/MoneySelectDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->setContentView(I)V

    .line 38
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;

    const-string v1, "money"

    const-string v2, "id"

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/sdk/m/views/MoneySelectDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->money:Landroid/widget/EditText;

    .line 39
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;

    const-string v1, "cancel"

    const-string v2, "id"

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/sdk/m/views/MoneySelectDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->cancel:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;

    const-string v1, "confirm"

    const-string v2, "id"

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/sdk/m/views/MoneySelectDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->confirm:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->cancel:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/m/views/MoneySelectDialog$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/views/MoneySelectDialog$1;-><init>(Lcom/maya/sdk/m/views/MoneySelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->confirm:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/m/views/MoneySelectDialog$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/views/MoneySelectDialog$2;-><init>(Lcom/maya/sdk/m/views/MoneySelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->setCancelable(Z)V

    .line 82
    return-void
.end method

.method public setMoneyCallback(Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    .line 91
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->callback:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    .line 92
    return-void
.end method
