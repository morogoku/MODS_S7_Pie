.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$UyKQdSvY5FC_Xuudb07cmVSuhU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$UyKQdSvY5FC_Xuudb07cmVSuhU4;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$UyKQdSvY5FC_Xuudb07cmVSuhU4;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->cleanDateFormat()V

    return-void
.end method
