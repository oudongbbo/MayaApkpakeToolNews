.class Lcom/maya/sdk/s/app/FMDemoActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field final synthetic a:Lcom/maya/sdk/s/app/FMDemoActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$6;->a:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$6;->a:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-static {p1}, Lcom/maya/sdk/s/app/FMDemoActivity;->a(Lcom/maya/sdk/s/app/FMDemoActivity;)Lcom/maya/sdk/s/app/a;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$6;->a:Lcom/maya/sdk/s/app/FMDemoActivity;

    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$6$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$6$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity$6;)V

    invoke-virtual {p1, v0, v1}, Lcom/maya/sdk/s/app/a;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
