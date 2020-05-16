.class public final synthetic Lcom/android/systemui/settings/-$$Lambda$BrightnessDetail$eH_PUyANAh-_9TMRJrG72D2qlBg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/settings/BrightnessDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/BrightnessDetail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/-$$Lambda$BrightnessDetail$eH_PUyANAh-_9TMRJrG72D2qlBg;->f$0:Lcom/android/systemui/settings/BrightnessDetail;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/-$$Lambda$BrightnessDetail$eH_PUyANAh-_9TMRJrG72D2qlBg;->f$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/settings/BrightnessDetail;->lambda$updateQSColoringResources$1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
