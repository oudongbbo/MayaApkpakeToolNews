.class Lcom/maya/sdk/s/core/view/BaseTagView$3;
.super Ljava/lang/Object;
.source "BaseTagView.java"

# interfaces
.implements Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/view/BaseTagView;->requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/view/BaseTagView;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/view/BaseTagView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/view/BaseTagView;

    .line 163
    iput-object p1, p0, Lcom/maya/sdk/s/core/view/BaseTagView$3;->this$0:Lcom/maya/sdk/s/core/view/BaseTagView;

    iput-object p2, p0, Lcom/maya/sdk/s/core/view/BaseTagView$3;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 167
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/maya/sdk/s/core/view/BaseTagView$3;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    :cond_0
    return-void
.end method
