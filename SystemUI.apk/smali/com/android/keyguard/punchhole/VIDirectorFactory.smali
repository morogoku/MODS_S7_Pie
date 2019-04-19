.class public Lcom/android/keyguard/punchhole/VIDirectorFactory;
.super Ljava/lang/Object;
.source "VIDirectorFactory.java"


# static fields
.field public static final VENDOR_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ro.product.vendor.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVIDirector(Landroid/content/Context;)Lcom/android/keyguard/punchhole/VIDirector;
    .locals 3

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "beyond0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBeyond0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBeyond0;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "beyond1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "beyond2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBeyond2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBeyond2;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA50;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA50;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Factory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no VIDirector corresponding to the vendor name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
