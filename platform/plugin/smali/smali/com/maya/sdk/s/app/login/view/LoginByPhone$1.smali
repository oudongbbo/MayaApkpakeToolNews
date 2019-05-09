.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$1;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    .line 116
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 120
    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->login_phone_clear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$000(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->login_phone_clear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$000(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :goto_0
    return-void
.end method
