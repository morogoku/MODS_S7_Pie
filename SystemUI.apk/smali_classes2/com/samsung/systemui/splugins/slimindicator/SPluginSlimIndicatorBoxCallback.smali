.class public interface abstract Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;
.super Ljava/lang/Object;
.source "SPluginSlimIndicatorBoxCallback.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "slimindicator"
.end annotation


# static fields
.field public static final ICON_BLACKLIST_SETTING:Ljava/lang/String; = "icon_blacklist"

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x3

.field public static final VERSION:I = 0x3eb

.field public static final mIconDrawableList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIconEnableList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIsShowHomeCarrier:Z = true

.field public static final mIsShowLockCarrier:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;->mIconEnableList:Ljava/util/HashMap;

    sput-object v0, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;->mIconDrawableList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract getIsLockCarrier()Z
.end method

.method public abstract getIsShowCarrier()Z
.end method
