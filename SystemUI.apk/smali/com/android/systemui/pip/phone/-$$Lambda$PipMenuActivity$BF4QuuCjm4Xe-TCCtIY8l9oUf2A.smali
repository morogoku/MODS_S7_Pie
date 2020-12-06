.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BF4QuuCjm4Xe-TCCtIY8l9oUf2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BF4QuuCjm4Xe-TCCtIY8l9oUf2A;->f$0:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BF4QuuCjm4Xe-TCCtIY8l9oUf2A;->f$0:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$onBusEvent$5(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    return-void
.end method
