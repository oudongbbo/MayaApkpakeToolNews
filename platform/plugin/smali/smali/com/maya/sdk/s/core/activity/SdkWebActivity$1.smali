.class Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/activity/SdkWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/s/core/activity/SdkWebActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/activity/SdkWebActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;->a:Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;->a:Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->finish()V

    return-void
.end method
