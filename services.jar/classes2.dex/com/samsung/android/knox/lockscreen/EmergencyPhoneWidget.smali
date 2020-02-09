.class public Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;
.super Landroid/widget/LinearLayout;
.source "EmergencyPhoneWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final BG_COLOR:I = -0x1000000

.field private static final BG_COLOR_ONFOCUS:I

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final TXT_COLOR:I = -0x1


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageMaxSize:I

.field private mImgView:Landroid/widget/ImageView;

.field private mPhoneAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xc8

    const/16 v1, 0x52

    const/16 v2, 0xdb

    const/16 v3, 0xe2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->initialize()V

    return-void
.end method

.method private callEmergencyNumber()V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_2c} :catch_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_3e

    :catch_2d
    move-exception v0

    const-string v1, "LSO"

    const-string v2, "Failed to place Emergency call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :catch_36
    move-exception v0

    const-string v1, "LSO"

    const-string v2, "Failed to place Emergency call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    nop

    :goto_3f
    return-void
.end method

.method private initialize()V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v3, 0x10806ca

    invoke-static {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    iget v5, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v4

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_9a
    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v4, 0x10406d0

    invoke-static {v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->callEmergencyNumber()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_22

    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    const-string v0, "LSO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAttribute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "epw:phoneNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    goto/16 :goto_f1

    :cond_3a
    const-string v0, "android:text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f1

    :cond_4d
    const-string v0, "epw:showBG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_f1

    :cond_68
    const-string v0, "epw:showText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_f1

    :cond_82
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_f1

    :cond_89
    const-string v0, "android:maxLines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxLines(I)V

    goto :goto_f1

    :cond_9e
    const-string v0, "android:gravity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->setGravity(I)V

    goto :goto_f1

    :cond_b1
    const-string v0, "android:orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_f1

    :cond_c9
    const-string v0, "android:src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_f1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    nop

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    if-eqz v2, :cond_f1

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f1} :catch_f2

    :cond_f1
    :goto_f1
    goto :goto_109

    :catch_f2
    move-exception v0

    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_109
    return-void
.end method
