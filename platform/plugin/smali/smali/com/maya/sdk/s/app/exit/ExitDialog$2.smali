.class Lcom/maya/sdk/s/app/exit/ExitDialog$2;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/exit/ExitDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 109
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$2;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 114
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$2;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_ad_view:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$200(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$2;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_bg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$300(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    return-void
.end method
