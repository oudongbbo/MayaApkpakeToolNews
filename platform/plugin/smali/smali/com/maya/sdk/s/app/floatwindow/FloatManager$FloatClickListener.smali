.class Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;
.super Ljava/lang/Object;
.source "FloatManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/floatwindow/FloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 169
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setIsTouchFW()V

    .line 176
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->showPopView()V

    .line 178
    :cond_0
    return-void
.end method
