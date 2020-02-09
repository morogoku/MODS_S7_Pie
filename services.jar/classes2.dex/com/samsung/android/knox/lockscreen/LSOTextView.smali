.class public Lcom/samsung/android/knox/lockscreen/LSOTextView;
.super Landroid/widget/TextView;
.source "LSOTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemText;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->init(Lcom/samsung/android/knox/lockscreen/LSOItemText;)V

    return-void
.end method


# virtual methods
.method public getTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText;)F
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    return v0

    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOTextView$1;->$SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    goto :goto_36

    :pswitch_23
    const v0, 0x40666666    # 3.6f

    goto :goto_36

    :pswitch_27
    const v0, 0x40266666    # 2.6f

    goto :goto_36

    :pswitch_2b
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_36

    :pswitch_2e
    const v0, 0x3ff70a3d    # 1.93f

    goto :goto_36

    :pswitch_32
    const v0, 0x3feccccd    # 1.85f

    nop

    :goto_36
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method public init(Lcom/samsung/android/knox/lockscreen/LSOItemText;)V
    .registers 5

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setTextColor(I)V

    goto :goto_24

    :cond_1f
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setTextColor(I)V

    :goto_24
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->getTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setTextSize(IF)V

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_42
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setGravity(I)V

    :cond_51
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    const-string v1, "android:maxLines"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "android:maxLines"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_77
    const-string v1, "android:singleLine"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const-string v1, "android:singleLine"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->setSingleLine(Z)V

    :cond_8c
    return-void
.end method
