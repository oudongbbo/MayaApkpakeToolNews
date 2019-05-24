.class Lcom/maya/sdk/demo/MainActivity$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/demo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/demo/MainActivity;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/maya/sdk/demo/MainActivity$2;->a:Lcom/maya/sdk/demo/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
