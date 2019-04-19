.class public abstract Lcom/android/server/lights/LightsManager;
.super Ljava/lang/Object;
.source "LightsManager.java"


# static fields
.field public static final LIGHT_ID_ATTENTION:I = 0x5

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BATTERY:I = 0x3

.field public static final LIGHT_ID_BLUETOOTH:I = 0x6

.field public static final LIGHT_ID_BUTTONS:I = 0x2

.field public static final LIGHT_ID_COUNT:I = 0xe

.field public static final LIGHT_ID_KEYBOARD:I = 0x1

.field public static final LIGHT_ID_LED_ALL:I = 0xd

.field public static final LIGHT_ID_LED_BATTERY:I = 0xc

.field public static final LIGHT_ID_LED_GIGALTE:I = 0xa

.field public static final LIGHT_ID_LED_LTE:I = 0x9

.field public static final LIGHT_ID_LED_SERVICE:I = 0x16

.field public static final LIGHT_ID_LED_WIFI:I = 0xb

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field public static final LIGHT_ID_SMART_GLOW_SERVICE:I = 0x17

.field public static final LIGHT_ID_SUBBACKLIGHT:I = 0x8

.field public static final LIGHT_ID_WIFI:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLight(I)Lcom/android/server/lights/Light;
.end method
