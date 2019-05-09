.class Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;
.super Ljava/lang/Object;
.source "ExitDialogForSecond.java"

# interfaces
.implements Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 227
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    iput-object p2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;->val$view:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    return-void
.end method
