.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4qYDz10Rw1gUuPPoPy77k6EyUBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

.field private final synthetic f$1:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4qYDz10Rw1gUuPPoPy77k6EyUBs;->f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4qYDz10Rw1gUuPPoPy77k6EyUBs;->f$1:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4qYDz10Rw1gUuPPoPy77k6EyUBs;->f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4qYDz10Rw1gUuPPoPy77k6EyUBs;->f$1:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$onBusEvent$6(Lcom/android/systemui/pip/phone/PipMenuActivity;Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    return-void
.end method
