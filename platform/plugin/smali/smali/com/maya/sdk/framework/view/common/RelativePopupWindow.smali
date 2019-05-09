.class public Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
.super Landroid/widget/PopupWindow;
.source "RelativePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;,
        Lcom/maya/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;
    }
.end annotation


# static fields
.field public static final HorizontalPosition_ALIGN_LEFT:I = 0x3

.field public static final HorizontalPosition_ALIGN_RIGHT:I = 0x4

.field public static final HorizontalPosition_CENTER:I = 0x0

.field public static final HorizontalPosition_LEFT:I = 0x1

.field public static final HorizontalPosition_RIGHT:I = 0x2

.field public static final VerticalPosition_ABOVE:I = 0x1

.field public static final VerticalPosition_ALIGN_BOTTOM:I = 0x4

.field public static final VerticalPosition_ALIGN_TOP:I = 0x3

.field public static final VerticalPosition_BELOW:I = 0x2

.field public static final VerticalPosition_CENTER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 72
    return-void
.end method

.method private static getDropDownMeasureSpecMode(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    .line 175
    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    .line 179
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static makeDropDownMeasureSpec(I)I
    .locals 2
    .param p0, "measureSpec"    # I

    .line 171
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->getDropDownMeasureSpecMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public showOnAnchor(Landroid/view/View;II)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "vertPos"    # I
    .param p3, "horizPos"    # I

    .line 81
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIII)V

    .line 82
    return-void
.end method

.method public showOnAnchor(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "vertPos"    # I
    .param p3, "horizPos"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 104
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIIIZ)V

    .line 105
    return-void
.end method

.method public showOnAnchor(Landroid/view/View;IIIIZ)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "vertPos"    # I
    .param p3, "horizPos"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "fitInScreen"    # Z

    .line 117
    invoke-virtual {p0, p6}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setClippingEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 121
    .local v1, "measuredW":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 122
    .local v2, "measuredH":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p6, :cond_0

    .line 123
    new-array v5, v4, [I

    .line 124
    .local v5, "anchorLocation":[I
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 125
    aget v6, v5, v3

    add-int/2addr p4, v6

    .line 126
    const/4 v6, 0x1

    aget v6, v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr p5, v6

    .line 128
    .end local v5    # "anchorLocation":[I
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 133
    :pswitch_1
    sub-int/2addr p5, v2

    .line 134
    goto :goto_0

    .line 139
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr p5, v5

    .line 140
    goto :goto_0

    .line 130
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr p5, v5

    .line 131
    goto :goto_0

    .line 136
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    sub-int/2addr p5, v5

    .line 137
    nop

    .line 145
    :goto_0
    packed-switch p3, :pswitch_data_1

    goto :goto_1

    .line 150
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    sub-int/2addr p4, v4

    .line 151
    goto :goto_1

    .line 157
    :pswitch_6
    goto :goto_1

    .line 159
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr p4, v4

    goto :goto_1

    .line 147
    :pswitch_8
    sub-int/2addr p4, v1

    .line 148
    goto :goto_1

    .line 153
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v5, v4

    add-int/2addr p4, v5

    .line 154
    nop

    .line 162
    :goto_1
    if-eqz p6, :cond_1

    goto :goto_2

    .line 165
    :cond_1
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 167
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public showOnAnchor(Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "vertPos"    # I
    .param p3, "horizPos"    # I
    .param p4, "fitInScreen"    # Z

    .line 92
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIIIZ)V

    .line 93
    return-void
.end method
