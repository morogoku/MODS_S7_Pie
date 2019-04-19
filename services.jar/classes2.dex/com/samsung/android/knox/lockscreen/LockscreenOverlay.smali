.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
.super Ljava/lang/Object;
.source "LockscreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;,
        Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;
    }
.end annotation


# static fields
.field private static final CUSTOM_LAYER:I = 0x2

.field public static final DEFAULT_ALPHA_LEVEL:F = 1.0f

.field private static final DEFAULT_LAYER:I = 0x1

.field private static final EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final ERROR_BAD_STATE:I = -0x6

.field public static final ERROR_FAILED:I = -0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ALLOWED:I = -0x1

.field public static final ERROR_NOT_READY:I = -0x5

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static final TAG:Ljava/lang/String; = "LSO_LockscreenOverlay"

.field private static gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private final mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field private mMiscService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method private static createLSOItem_EmergencyPhone(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 9

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    iget v1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lez v1, :cond_16

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    iget v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    int-to-float v4, v4

    invoke-direct {v1, v3, v2, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_16
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    const-string v4, "com.samsung.android.knox.lockscreen.EmergencyPhoneWidget"

    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    const-string v4, "epw:phoneNumber"

    iget-object v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    if-eqz v4, :cond_45

    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_45

    const-string v4, "android:text"

    iget-object v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android:maxLines"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_50

    :cond_45
    const-string v4, "epw:showText"

    iget-boolean v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_50
    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-eqz v4, :cond_63

    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_63

    const-string v4, "android:src"

    iget-object v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    const-string v4, "android:orientation"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "epw:showBG"

    iget-boolean v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "android:topPos"

    iget v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "android:bottomPos"

    iget v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setGravity(I)V

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setDimension(II)V

    iget v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iget v5, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWeight(F)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    iget v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_b4

    new-instance v4, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    iget v6, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v4, v3, v2, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_b4
    const-string v2, "android:alpha"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setGravity(I)V

    return-object v0
.end method

.method private static createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 9

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/16 v2, 0x14

    invoke-static {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    const-string v2, "com.samsung.android.knox.lockscreen.EmergencyPhoneWidget"

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    const-string v2, "epw:phoneNumber"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android:orientation"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "epw:showText"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v2, 0x64

    invoke-static {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xc8

    invoke-static {p0, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setDimension(II)V

    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setGravity(I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const-string v5, "android:alpha"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setGravity(I)V

    return-object v0
.end method

.method private static createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0xc0

    const/16 v3, 0xc7

    const/16 v4, 0xd1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const v3, 0x10406d2

    invoke-static {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    const v5, 0x10406d3

    invoke-static {v0, v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x10406d1

    invoke-static {v0, v6}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    new-instance v9, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v10, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-direct {v10, v13, v12, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v10, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v14, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v14}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v15, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v15, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x11

    invoke-virtual {v15, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setGravity(I)V

    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const/4 v12, -0x2

    if-eqz v1, :cond_6e

    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v11, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setDimension(II)V

    const-string v12, "android:maxHeight"

    const/16 v13, 0x4b

    invoke-static {v0, v13}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v14, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_6e
    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v11, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    const/16 v13, 0x11

    invoke-virtual {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setGravity(I)V

    invoke-virtual {v14, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v15, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v15, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    move-object v11, v15

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    invoke-virtual {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setGravity(I)V

    invoke-virtual {v14, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v14, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBgColor(I)V

    const/4 v12, -0x2

    const/4 v15, -0x1

    invoke-virtual {v14, v15, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setDimension(II)V

    invoke-virtual {v10, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setGravity(I)V

    const/high16 v11, 0x42300000    # 44.0f

    const/4 v12, 0x0

    invoke-virtual {v10, v15, v12, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setDimension(IIF)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/high16 v13, 0x41200000    # 10.0f

    invoke-direct {v11, v15, v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v9, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    move-object v10, v11

    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    sget-object v12, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    new-instance v12, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v12, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setDimension(II)V

    const v13, 0x3f19999a    # 0.6f

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setWeight(F)V

    sget-object v13, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setGravity(I)V

    const-string v13, "android:maxLines"

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v13, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setDimension(II)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setWeight(F)V

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setGravity(I)V

    new-instance v14, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v14}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    invoke-virtual {v14, v15, v15}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setDimension(II)V

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setGravity(I)V

    new-instance v15, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v15, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    sget-object v15, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v12, v15}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    const-string v15, "android:maxLines"

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v15, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v14, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v0, v8}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    const-string v15, "android:singleLine"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v15, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v14, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setDimension(II)V

    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBgColor(I)V

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setGravity(I)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const/16 v0, 0x30

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setGravity(I)V

    const/high16 v0, 0x41f00000    # 30.0f

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setDimension(IIF)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-direct {v0, v11, v12, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v9, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    return-object v9
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_1d

    if-eqz p0, :cond_1d

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    :cond_1d
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_12

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    :cond_12
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method

.method private static parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .registers 10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_9

    return-object v1

    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v3

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_28

    if-nez v2, :cond_28

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_25

    move-object v2, v5

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    goto :goto_28

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_28
    :goto_28
    if-nez v2, :cond_2b

    return-object v1

    :cond_2b
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v5

    if-nez v5, :cond_32

    return-object v1

    :cond_32
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;

    const-string v6, ""

    invoke-direct {v1, v6}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getGravity()I

    move-result v6

    iput v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    const-string v6, "epw:phoneNumber"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "epw:phoneNumber"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    :cond_4f
    const-string v6, "android:text"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const-string v6, "android:text"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    :cond_5f
    const-string v6, "android:src"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v6, "android:src"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    :cond_6f
    const-string v6, "android:topPos"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    const-string v6, "android:topPos"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    :cond_83
    const-string v6, "android:bottomPos"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_97

    const-string v6, "android:bottomPos"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    :cond_97
    const-string v6, "epw:showBG"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const-string v6, "epw:showBG"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    :cond_ab
    const-string v6, "epw:showText"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bf

    const-string v6, "epw:showText"

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    :cond_bf
    return-object v1
.end method


# virtual methods
.method public canConfigure()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->canConfigure(I)Z

    move-result v0

    return v0
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.changeLockScreenString"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IMiscPolicy;->changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "LSO_LockscreenOverlay"

    const-string v2, "Failed changeLockScreenString"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.configure"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_42

    if-eqz p3, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_42

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    const-string v1, "logo"

    invoke-static {v0, p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_32

    const-string v0, "LSO_LockscreenOverlay"

    const-string v1, "Failed to copy enterprise logo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_32
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result v1

    return v1

    :cond_3f
    const/16 v1, -0x7d0

    return v1

    :cond_42
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Name and Address cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configure([Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;)I
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.configure"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_d9

    array-length v0, p1

    if-eqz v0, :cond_d9

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_d1

    aget-object v2, p1, v1

    iget v2, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-ltz v2, :cond_d1

    aget-object v2, p1, v0

    iget v2, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_d1

    aget-object v2, p1, v0

    iget v2, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    aget-object v4, p1, v0

    iget v4, v4, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v2, v4, :cond_d1

    move v2, v1

    :goto_2d
    if-ge v2, v0, :cond_54

    aget-object v4, p1, v2

    if-eqz v4, :cond_4c

    aget-object v4, p1, v2

    iget v4, v4, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    aget-object v5, p1, v2

    iget v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v4, v5, :cond_4c

    aget-object v4, p1, v2

    iget v4, v4, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    iget v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-gt v4, v5, :cond_4c

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_4c
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid argument list - Item[i] top > bottom or Item[i+1] top < Item[i] bottom"

    invoke-direct {v1, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    new-instance v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setDimension(II)V

    const/4 v5, 0x0

    move v6, v5

    move v5, v1

    :goto_60
    array-length v7, p1

    if-ge v5, v7, :cond_c0

    aget-object v7, p1, v5

    iget v7, v7, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-ge v6, v7, :cond_77

    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    aget-object v8, p1, v5

    iget v8, v8, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    invoke-direct {v7, v4, v1, v8}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v2, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_77
    iget-object v7, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    aget-object v8, p1, v5

    iget-object v8, v8, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lso"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9d

    const-string v1, "LSO_LockscreenOverlay"

    const-string v3, "Failed to copy images"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1

    :cond_9d
    new-instance v8, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v8, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Ljava/lang/String;)V

    aget-object v9, p1, v5

    iget v9, v9, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    aget-object v10, p1, v5

    iget v10, v10, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v8, v4, v1, v9}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setDimension(IIF)V

    aget-object v9, p1, v5

    iget-object v9, v9, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    aget-object v9, p1, v5

    iget v6, v9, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_c0
    if-ge v6, v3, :cond_cc

    new-instance v5, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-direct {v5, v4, v1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_cc
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result v1

    return v1

    :cond_d1
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid argument list - Item[0] top position is less than 0, Item[last_index] is greater than 100, or position of Item[0] > Item[last_index]"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d9
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid argument list - List is empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlpha()F
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v2

    if-eqz v2, :cond_1c

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    :cond_1c
    if-nez v1, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_23
    return v0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.getCurrentLockScreenString"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "LSO_LockscreenOverlay"

    const-string v2, "Failed getCurrentLockScreenString!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData()Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyPhone()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEmergencyPhoneInfo()Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;

    move-result-object v1

    return-object v1

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public isConfigured()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->isConfigured(I)Z

    move-result v0

    return v0
.end method

.method public removeEmergencyPhone()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.removeEmergencyPhone"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->resetData(I)V

    return-void
.end method

.method public resetAll()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.resetAll"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->resetWallpaper()V

    return-void
.end method

.method public resetData(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData(I)V

    return-void
.end method

.method public resetOverlay()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.resetOverlay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData()V

    return-void
.end method

.method public resetWallpaper()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.resetWallpaper"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetWallpaper()V

    return-void
.end method

.method public setAlpha(F)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setAlpha"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_30

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    move-object v0, v1

    :cond_20
    const-string v1, "android:alpha"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setPreferences(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I

    move-result v1

    return v1

    :cond_30
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Alpha values must be in between 0 to 1"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I
    .registers 4

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result v0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->cleanDataLocalDirectory(Landroid/content/Context;)V

    return v0
.end method

.method public setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .registers 4

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result v0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    :cond_10
    return v0
.end method

.method public setEmergencyPhone(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setEmergencyPhone"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result v1

    return v1

    :cond_1e
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Emergency/Support phone cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmergencyPhoneInfo(Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setEmergencyPhoneInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_5b

    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_5b

    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5b

    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    if-ltz v0, :cond_53

    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_53

    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iget v1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    if-le v0, v1, :cond_53

    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    const-string v2, "epw"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-nez v0, :cond_42

    const-string v0, "LSO_LockscreenOverlay"

    const-string v1, "Failed to copy icon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_42
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result v1

    return v1

    :cond_53
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid argument list"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Emergency/Support phone cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWallpaper(Ljava/lang/String;)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setWallpaper"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wp"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x4

    if-nez p1, :cond_23

    const-string v1, "LSO_LockscreenOverlay"

    const-string v2, "Failed to copy wallaper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_23
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2e} :catch_4d

    move-object v0, v2

    nop

    nop

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setWallpaper(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    if-eqz v0, :cond_46

    :try_start_39
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_46

    :catch_3d
    move-exception v3

    const-string v4, "LSO_LockscreenOverlay"

    const-string v5, "Failed to close file descriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_46
    :goto_46
    nop

    :goto_47
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->cleanDataLocalDirectory(Landroid/content/Context;)V

    return v2

    :catch_4d
    move-exception v2

    const-string v3, "LSO_LockscreenOverlay"

    const-string v4, "Error: file not found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_56
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Wallpaper cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
