.class public final synthetic Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WBF53BpQMwPlgknhSP5gMUNi5_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WBF53BpQMwPlgknhSP5gMUNi5_o;->f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WBF53BpQMwPlgknhSP5gMUNi5_o;->f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->lambda$onTuningChanged$1(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V

    return-void
.end method
