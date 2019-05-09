.class Lcom/maya/sdk/s/app/login/view/LoginHome$ToLogoListener;
.super Ljava/lang/Object;
.source "LoginHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToLogoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginHome;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginHome;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginHome;

    .line 105
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginHome$ToLogoListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .line 110
    return-void
.end method
