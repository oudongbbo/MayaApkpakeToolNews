.class Lcom/maya/sdk/s/app/FMDemoActivity$7;
.super Ljava/lang/Object;
.source "FMDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMDemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMDemoActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMDemoActivity;

    .line 233
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$7;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 237
    new-instance v0, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$7;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$7;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;->cleanAccountInfoCache(Landroid/content/Context;)V

    .line 239
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$7;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    const-string v1, "\u6e05\u9664\u6570\u636e\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    return-void
.end method
