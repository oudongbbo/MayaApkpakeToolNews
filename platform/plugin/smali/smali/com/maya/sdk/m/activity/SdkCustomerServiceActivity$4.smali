.class Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$4;->a:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 183
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 184
    iget-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$4;->a:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->b(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u5373\u5c06\u5173\u95ed.."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 186
    iget-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$4;->a:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object p1, p1, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
