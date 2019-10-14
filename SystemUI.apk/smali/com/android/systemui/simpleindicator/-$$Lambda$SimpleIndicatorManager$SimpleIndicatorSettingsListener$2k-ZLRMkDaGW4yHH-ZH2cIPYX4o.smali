.class public final synthetic Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$SimpleIndicatorSettingsListener$2k-ZLRMkDaGW4yHH-ZH2cIPYX4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$SimpleIndicatorSettingsListener$2k-ZLRMkDaGW4yHH-ZH2cIPYX4o;->f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$SimpleIndicatorSettingsListener$2k-ZLRMkDaGW4yHH-ZH2cIPYX4o;->f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;

    invoke-static {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;->lambda$onChanged$0(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;)V

    return-void
.end method
