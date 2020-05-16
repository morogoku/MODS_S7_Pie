.class public final synthetic Lcom/android/systemui/-$$Lambda$BatteryMeterView$5P2Tx1j3akq9VfTXQojJuz8ZYHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$5P2Tx1j3akq9VfTXQojJuz8ZYHY;->f$0:Lcom/android/systemui/BatteryMeterView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$5P2Tx1j3akq9VfTXQojJuz8ZYHY;->f$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->lambda$onAttachedToWindow$1(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method
