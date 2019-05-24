.class Lcom/maya/sdk/framework/pay/PayWebDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/pay/PayWebDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/framework/view/a/a;

.field final synthetic b:Lcom/maya/sdk/framework/pay/PayWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Lcom/maya/sdk/framework/view/a/a;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$2;->b:Lcom/maya/sdk/framework/pay/PayWebDialog;

    iput-object p2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$2;->a:Lcom/maya/sdk/framework/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$2;->a:Lcom/maya/sdk/framework/view/a/a;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/view/a/a;->b()V

    return-void
.end method
