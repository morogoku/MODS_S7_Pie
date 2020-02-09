.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSContainerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$0:Lcom/android/systemui/qs/QSContainerImpl;

    iput p2, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$1:I

    iput p3, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$2:I

    iput p4, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$0:Lcom/android/systemui/qs/QSContainerImpl;

    iget v1, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$1:I

    iget v2, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$2:I

    iget v3, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSContainerImpl;->lambda$updateColors$0(Lcom/android/systemui/qs/QSContainerImpl;III)V

    return-void
.end method
