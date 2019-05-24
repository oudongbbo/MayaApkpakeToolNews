.class Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$3;
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

    .line 169
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$3;->a:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 174
    iget-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$3;->a:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-virtual {p1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->finish()V

    return-void
.end method
