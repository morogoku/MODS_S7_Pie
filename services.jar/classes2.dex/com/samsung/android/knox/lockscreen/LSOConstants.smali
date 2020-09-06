.class public Lcom/samsung/android/knox/lockscreen/LSOConstants;
.super Ljava/lang/Object;
.source "LSOConstants.java"


# static fields
.field public static final ACTION_LSO_CONFIG_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

.field public static final ADMIN_LOCKSCREEN_WALLPAPER_DIR:Ljava/lang/String; = "/data/system/enterprise/lso"

.field public static final ADMIN_LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_LOCKSCREEN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

.field public static final CUSTOM_LAYER:I = 0x2

.field public static final DEFAULT_ALPHA_LEVEL:F = 1.0f

.field public static final DEFAULT_LAYER:I = 0x1

.field public static final EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final ENTERPRISE_PRIVATE_DIR:Ljava/lang/String; = "/data/system/enterprise"

.field public static final ERROR_BAD_STATE:I = -0x6

.field public static final ERROR_FAILED:I = -0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ALLOWED:I = -0x1

.field public static final ERROR_NOT_READY:I = -0x5

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_KNOX_WALLPAPER_ENABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_WALLPAPER_ENABLED_INTERNAL"

.field public static final FEATURE_ALL:I = -0x1

.field public static final FEATURE_ANY:I = 0x0

.field public static final FEATURE_INVISIBLE_OVERLAY:I = 0x1

.field public static final FEATURE_WALLPAPER:I = 0x2

.field public static final LOCKSCREEN_WALLPAPER_DIR:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d"

.field public static final LSO_FEATURE_ALL:Ljava/lang/String; = "LOCKSCREEN_ALL_FEATURE"

.field public static final LSO_FEATURE_ANY:Ljava/lang/String; = "LOCKSCREEN_ANY_FEATURE"

.field public static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field public static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field public static final LSO_PRIVATE_DIR:Ljava/lang/String; = "/data/system/enterprise/lso"

.field public static final MAX_SUPPORTED_LAYER:I = 0x3

.field public static final RESET_ALL_LAYER:I = 0x0

.field public static final SETTINGS_MDM_WALLPAPER_ENABLE_INTERNAL:Ljava/lang/String; = "mdm_wallpaper_enabled"

.field public static final TAG:Ljava/lang/String; = "LSO"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLSOFeatureName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "LOCKSCREEN_WALLPAPER"

    return-object v0

    :pswitch_18
    const-string v0, "LOCKSCREEN_OVERLAY"

    return-object v0

    :pswitch_1b
    const-string v0, "LOCKSCREEN_ANY_FEATURE"

    return-object v0

    :pswitch_1e
    const-string v0, "LOCKSCREEN_ALL_FEATURE"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch -0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static getLayerName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAYER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "EMERGENCY_PHONE_LAYER"

    return-object v0

    :pswitch_18
    const-string v0, "CUSTOM_LAYER"

    return-object v0

    :pswitch_1b
    const-string v0, "DEFAULT_LAYER"

    return-object v0

    :pswitch_1e
    const-string v0, "RESET_ALL_LAYER"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method
