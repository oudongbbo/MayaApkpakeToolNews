.class Lcom/maya/sdk/s/app/FMDemoActivity$9;
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

    .line 248
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$9;->a:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 252
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/maya/sdk/s/app/FMDemoActivity$9$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$9$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity$9;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 277
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
