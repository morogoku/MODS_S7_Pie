.class Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;
.super Ljava/lang/Object;
.source "SettingsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field static OFF:I

.field static ON:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->OFF:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->ON:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
