.class public Lcom/samsung/android/knox/lockscreen/LSOItemView;
.super Ljava/lang/Object;
.source "LSOItemView.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v1

    packed-switch v1, :pswitch_data_7e

    goto :goto_36

    :pswitch_9
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-static {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOWidgetView;->getWidget(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemWidget;)Landroid/view/View;

    move-result-object v0

    goto :goto_36

    :pswitch_11
    new-instance v2, Lcom/samsung/android/knox/lockscreen/LSOContainerView;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V

    move-object v0, v2

    goto :goto_36

    :pswitch_1b
    new-instance v2, Lcom/samsung/android/knox/lockscreen/LSOImageView;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/knox/lockscreen/LSOImageView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemImage;)V

    move-object v0, v2

    goto :goto_36

    :pswitch_25
    new-instance v2, Lcom/samsung/android/knox/lockscreen/LSOTextView;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/knox/lockscreen/LSOTextView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemText;)V

    move-object v0, v2

    goto :goto_36

    :pswitch_2f
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    nop

    :goto_36
    if-nez v0, :cond_3a

    const/4 v2, 0x0

    return-object v2

    :cond_3a
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_49
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->size()I

    move-result v3

    if-lez v3, :cond_7d

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_79

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7d

    :cond_79
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_7d
    :goto_7d
    return-object v0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
        :pswitch_1b
        :pswitch_11
        :pswitch_9
    .end packed-switch
.end method
