.class public final synthetic Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG-5pI5T39Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG-5pI5T39Y;->f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    iput-object p2, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG-5pI5T39Y;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG-5pI5T39Y;->f$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG-5pI5T39Y;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->lambda$setBlackListDBValue$0(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;Ljava/lang/String;)V

    return-void
.end method
