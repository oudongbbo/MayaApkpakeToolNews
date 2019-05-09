.class Lcom/maya/sdk/s/app/FMDemoActivity$9;
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

    .line 286
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$9;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$9$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$9$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method
