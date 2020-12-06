.class public Lcom/samsung/android/systemui/smartpopupview/Rune;
.super Ljava/lang/Object;
.source "Rune.java"


# static fields
.field public static ALWAYS_DISABLE_HUN:Z

.field public static ENABLE_APP_SUGGESTION:Z

.field public static ENABLE_FULLSCREEN_LAUNCHING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ALWAYS_DISABLE_HUN:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_FULLSCREEN_LAUNCHING:Z

    sput-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_APP_SUGGESTION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
