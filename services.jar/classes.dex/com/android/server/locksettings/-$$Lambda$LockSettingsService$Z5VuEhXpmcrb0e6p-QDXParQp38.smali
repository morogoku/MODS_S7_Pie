.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$1:I

    iput-object p3, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$1:I

    iget-object v2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;->f$3:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$onSyntheticPasswordRewrapped$8(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/SdpManagerService;)V

    return-void
.end method
