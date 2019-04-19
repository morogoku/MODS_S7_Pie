.class public final synthetic Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    iput p2, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$1:I

    iput p3, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$2:I

    iput p4, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$3:I

    iput p5, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$1:I

    iget v2, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$2:I

    iget v3, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$3:I

    iget v4, p0, Lcom/android/systemui/servicebox/pages/clock/-$$Lambda$KeyguardClockPage$laraIp5vya51cSa-GF19OExDl70;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->lambda$onSizeChanged$1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;IIII)V

    return-void
.end method
