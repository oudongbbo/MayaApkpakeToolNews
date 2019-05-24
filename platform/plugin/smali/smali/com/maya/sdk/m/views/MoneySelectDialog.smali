.class public Lcom/maya/sdk/m/views/MoneySelectDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->e:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    return-object p0
.end method

.method static synthetic b(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->e:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->a:Landroid/content/Context;

    const-string v1, "maya_dialog_theme_main"

    const-string v2, "style"

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 36
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->a:Landroid/content/Context;

    const-string v0, "maya_dialog_money"

    const-string v1, "layout"

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->setContentView(I)V

    .line 38
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->a:Landroid/content/Context;

    const-string v0, "money"

    const-string v1, "id"

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->d:Landroid/widget/EditText;

    .line 39
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->a:Landroid/content/Context;

    const-string v0, "cancel"

    const-string v1, "id"

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->b:Landroid/widget/Button;

    .line 40
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->a:Landroid/content/Context;

    const-string v0, "confirm"

    const-string v1, "id"

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->c:Landroid/widget/Button;

    .line 42
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->b:Landroid/widget/Button;

    new-instance v0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/views/MoneySelectDialog$1;-><init>(Lcom/maya/sdk/m/views/MoneySelectDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog;->c:Landroid/widget/Button;

    new-instance v0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/views/MoneySelectDialog$2;-><init>(Lcom/maya/sdk/m/views/MoneySelectDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->setCancelable(Z)V

    return-void
.end method
