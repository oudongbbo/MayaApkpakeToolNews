.class Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;
.super Ljava/lang/Object;
.source "SdkCustomerServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 105
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-virtual {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->finish()V

    .line 110
    return-void
.end method
