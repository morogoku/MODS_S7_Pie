.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;
.super Ljava/lang/Object;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockTypeResult"
.end annotation


# instance fields
.field public clockType:I

.field private isThemeImageClock:Z

.field private shouldShowDefaultClock:Z

.field private shouldShowDualClock:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->isThemeImageClock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->isThemeImageClock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->shouldShowDualClock:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->shouldShowDualClock:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->shouldShowDefaultClock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->shouldShowDefaultClock:Z

    return p1
.end method
