.class public Lcom/maya/sdk/framework/utils/CornerUtils;
.super Ljava/lang/Object;
.source "CornerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 18
    .param p0, "radius"    # F
    .param p1, "normalColor"    # I
    .param p2, "pressColor"    # I
    .param p3, "postion"    # I

    .line 41
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 42
    .local v4, "bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x0

    .line 43
    .local v5, "normal":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 45
    .local v6, "pressed":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-nez v3, :cond_0

    .line 46
    new-array v7, v13, [F

    aput v16, v7, v14

    aput v16, v7, v15

    aput v16, v7, v12

    aput v16, v7, v11

    aput v16, v7, v10

    aput v16, v7, v9

    aput v0, v7, v8

    const/16 v17, 0x7

    aput v0, v7, v17

    invoke-static {v1, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 47
    new-array v7, v13, [F

    aput v16, v7, v14

    aput v16, v7, v15

    aput v16, v7, v12

    aput v16, v7, v11

    aput v16, v7, v10

    aput v16, v7, v9

    aput v0, v7, v8

    aput v0, v7, v17

    invoke-static {v2, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    .line 48
    :cond_0
    if-ne v3, v15, :cond_1

    .line 49
    new-array v7, v13, [F

    aput v16, v7, v14

    aput v16, v7, v15

    aput v16, v7, v12

    aput v16, v7, v11

    aput v0, v7, v10

    aput v0, v7, v9

    aput v16, v7, v8

    const/16 v17, 0x7

    aput v16, v7, v17

    invoke-static {v1, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 50
    new-array v7, v13, [F

    aput v16, v7, v14

    aput v16, v7, v15

    aput v16, v7, v12

    aput v16, v7, v11

    aput v0, v7, v10

    aput v0, v7, v9

    aput v16, v7, v8

    aput v16, v7, v17

    invoke-static {v2, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    .line 51
    :cond_1
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    .line 52
    new-array v7, v13, [F

    aput v16, v7, v14

    aput v16, v7, v15

    aput v16, v7, v12

    aput v16, v7, v11

    aput v0, v7, v10

    aput v0, v7, v9

    aput v0, v7, v8

    const/16 v17, 0x7

    aput v0, v7, v17

    invoke-static {v1, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 53
    new-array v7, v13, [F

    aput v16, v7, v14

    aput v16, v7, v15

    aput v16, v7, v12

    aput v16, v7, v11

    aput v0, v7, v10

    aput v0, v7, v9

    aput v0, v7, v8

    aput v0, v7, v17

    invoke-static {v2, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    .line 54
    :cond_2
    const/4 v7, -0x2

    if-ne v3, v7, :cond_3

    .line 55
    invoke-static {v1, v0}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 56
    invoke-static {v2, v0}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 59
    :cond_3
    :goto_0
    new-array v7, v15, [I

    const v8, -0x10100a7

    aput v8, v7, v14

    invoke-virtual {v4, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    new-array v7, v15, [I

    const v8, 0x10100a7

    aput v8, v7, v14

    invoke-virtual {v4, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    return-object v4
.end method

.method public static cornerDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bgColor"    # I
    .param p1, "cornerradius"    # F

    .line 13
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 14
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 15
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 17
    return-object v0
.end method

.method public static cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bgColor"    # I
    .param p1, "cornerradius"    # [F

    .line 21
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 22
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 23
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 25
    return-object v0
.end method

.method public static cornerDrawable(I[FII)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bgColor"    # I
    .param p1, "cornerradius"    # [F
    .param p2, "borderwidth"    # I
    .param p3, "bordercolor"    # I

    .line 29
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 30
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 31
    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 32
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 34
    return-object v0
.end method

.method public static listItemSelector(FIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 17
    .param p0, "radius"    # F
    .param p1, "normalColor"    # I
    .param p2, "pressColor"    # I
    .param p3, "itemTotalSize"    # I
    .param p4, "itemPosition"    # I

    .line 92
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 93
    .local v3, "bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 94
    .local v4, "normal":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 96
    .local v5, "pressed":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_0

    add-int/lit8 v7, p3, -0x1

    if-ne v2, v7, :cond_0

    .line 97
    new-array v7, v12, [F

    aput p0, v7, v13

    aput p0, v7, v6

    aput p0, v7, v11

    aput p0, v7, v10

    aput p0, v7, v9

    aput p0, v7, v8

    const/4 v15, 0x6

    aput p0, v7, v15

    const/4 v14, 0x7

    aput p0, v7, v14

    invoke-static {v0, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 99
    new-array v7, v12, [F

    aput p0, v7, v13

    aput p0, v7, v6

    aput p0, v7, v11

    aput p0, v7, v10

    aput p0, v7, v9

    aput p0, v7, v8

    aput p0, v7, v15

    aput p0, v7, v14

    invoke-static {v1, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_0

    .line 101
    :cond_0
    const/4 v7, 0x0

    if-nez v2, :cond_1

    .line 102
    new-array v8, v12, [F

    aput p0, v8, v13

    aput p0, v8, v6

    aput p0, v8, v11

    aput p0, v8, v10

    aput v7, v8, v9

    const/16 v16, 0x5

    aput v7, v8, v16

    const/4 v15, 0x6

    aput v7, v8, v15

    const/4 v14, 0x7

    aput v7, v8, v14

    invoke-static {v0, v8}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 103
    new-array v8, v12, [F

    aput p0, v8, v13

    aput p0, v8, v6

    aput p0, v8, v11

    aput p0, v8, v10

    aput v7, v8, v9

    aput v7, v8, v16

    aput v7, v8, v15

    aput v7, v8, v14

    invoke-static {v1, v8}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 104
    :cond_1
    add-int/lit8 v8, p3, -0x1

    if-ne v2, v8, :cond_2

    .line 105
    new-array v8, v12, [F

    aput v7, v8, v13

    aput v7, v8, v6

    aput v7, v8, v11

    aput v7, v8, v10

    aput p0, v8, v9

    const/16 v16, 0x5

    aput p0, v8, v16

    const/4 v15, 0x6

    aput p0, v8, v15

    const/4 v14, 0x7

    aput p0, v8, v14

    invoke-static {v0, v8}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 106
    new-array v8, v12, [F

    aput v7, v8, v13

    aput v7, v8, v6

    aput v7, v8, v11

    aput v7, v8, v10

    aput p0, v8, v9

    aput p0, v8, v16

    aput p0, v8, v15

    aput p0, v8, v14

    invoke-static {v1, v8}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 108
    :cond_2
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v4, v7

    .line 109
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v5, v7

    .line 112
    :goto_0
    new-array v7, v6, [I

    const v8, -0x10100a7

    aput v8, v7, v13

    invoke-virtual {v3, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 113
    new-array v6, v6, [I

    const v7, 0x10100a7

    aput v7, v6, v13

    invoke-virtual {v3, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    return-object v3
.end method

.method public static listItemSelector(FIIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 16
    .param p0, "radius"    # F
    .param p1, "normalColor"    # I
    .param p2, "pressColor"    # I
    .param p3, "isLastPostion"    # Z

    .line 69
    move/from16 v0, p1

    move/from16 v1, p2

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 70
    .local v2, "bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x0

    .line 71
    .local v3, "normal":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 73
    .local v4, "pressed":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_0

    .line 74
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v3, v7

    .line 75
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v4, v7

    goto :goto_0

    .line 77
    :cond_0
    const/16 v7, 0x8

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v9, v8, v6

    aput v9, v8, v5

    const/4 v10, 0x2

    aput v9, v8, v10

    const/4 v11, 0x3

    aput v9, v8, v11

    const/4 v12, 0x4

    aput p0, v8, v12

    const/4 v13, 0x5

    aput p0, v8, v13

    const/4 v14, 0x6

    aput p0, v8, v14

    const/4 v15, 0x7

    aput p0, v8, v15

    invoke-static {v0, v8}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 78
    new-array v7, v7, [F

    aput v9, v7, v6

    aput v9, v7, v5

    aput v9, v7, v10

    aput v9, v7, v11

    aput p0, v7, v12

    aput p0, v7, v13

    aput p0, v7, v14

    aput p0, v7, v15

    invoke-static {v1, v7}, Lcom/maya/sdk/framework/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 81
    :goto_0
    new-array v7, v5, [I

    const v8, -0x10100a7

    aput v8, v7, v6

    invoke-virtual {v2, v7, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 82
    new-array v5, v5, [I

    const v7, 0x10100a7

    aput v7, v5, v6

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 83
    return-object v2
.end method
